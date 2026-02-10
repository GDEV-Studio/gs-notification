let notificationId = 0;
let configData = null;

$(document).ready(function() {
  
  window.addEventListener('message', function(event) {
    // Recevoir la configuration
    if (event.data.action === 'loadConfig') {
      configData = event.data.config;
    }
    
    // Notifications standards (100% dynamique depuis config)
    else if (event.data.action === 'showNotification') {
      createNotification(
        event.data.type,
        event.data.title,
        event.data.message,
        event.data.duration
      );
    }
    
    // Notifications CUSTOM
    else if (event.data.action === 'showCustomNotification') {
      createCustomNotification(
        event.data.icon,
        event.data.bgColor,
        event.data.accentColor,
        event.data.progressColor,
        event.data.title,
        event.data.message,
        event.data.duration
      );
    }
    
    // Afficher toutes les notifications (100% dynamique)
    else if (event.data.action === 'showAllNotifications') {
      showAllNotifications();
    }
  });

});

// ============================================
// SYSTÈME DE FORMATAGE DU TEXTE
// ============================================
function formatText(text) {
  if (!text) return '';
  
  // Convertir en chaîne si ce n'est pas déjà le cas
  text = String(text);
  
  // 1. Retour à la ligne : \n ou <br> ou [br]
  text = text.replace(/\\n/g, '<br>');
  text = text.replace(/\[br\]/g, '<br>');
  
  // 2. Gras : **texte** ou [b]texte[/b]
  text = text.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>');
  text = text.replace(/\[b\](.*?)\[\/b\]/g, '<strong>$1</strong>');
  
  // 3. Italique : *texte* ou [i]texte[/i]
  text = text.replace(/(?<!\*)\*(?!\*)([^\*]+)\*(?!\*)/g, '<em>$1</em>');
  text = text.replace(/\[i\](.*?)\[\/i\]/g, '<em>$1</em>');
  
  // 4. Souligné : __texte__ ou [u]texte[/u]
  text = text.replace(/__(.*?)__/g, '<u>$1</u>');
  text = text.replace(/\[u\](.*?)\[\/u\]/g, '<u>$1</u>');
  
  // 5. Code inline : `code` ou [code]code[/code]
  text = text.replace(/`(.*?)`/g, '<code class="bg-black/30 px-1.5 py-0.5 rounded text-xs font-mono">$1</code>');
  text = text.replace(/\[code\](.*?)\[\/code\]/g, '<code class="bg-black/30 px-1.5 py-0.5 rounded text-xs font-mono">$1</code>');
  
  // 6. Couleurs : [color=red]texte[/color]
  text = text.replace(/\[color=(.*?)\](.*?)\[\/color\]/g, '<span style="color: $1;">$2</span>');
  
  // 7. Taille : [size=20]texte[/size]
  text = text.replace(/\[size=(\d+)\](.*?)\[\/size\]/g, '<span style="font-size: $1px;">$2</span>');
  
  // 8. Liens : [url=https://...]texte[/url]
  text = text.replace(/\[url=(.*?)\](.*?)\[\/url\]/g, '<a href="$1" class="underline hover:text-blue-300" target="_blank">$2</a>');
  
  return text;
}

// Fonction pour créer une notification CUSTOM
function createCustomNotification(icon, bgColor, accentColor, progressColor, title, message, duration) {
  notificationId++;
  const id = 'notif-' + notificationId;
  
  // Formater le titre et le message
  const formattedTitle = formatText(title);
  const formattedMessage = formatText(message);
  
  const notificationHTML = `
    <div id="${id}" class="animate-slideInRight rounded-xl ${bgColor} overflow-hidden relative">
      <div class="absolute left-0 top-0 bottom-0 w-1 ${accentColor}"></div>
      
      <div class="flex items-start gap-3 p-4 pl-5">
        <div class="flex-shrink-0 ${accentColor} rounded-full w-10 h-10 flex items-center justify-center">
          <i class="fas ${icon} text-white text-lg"></i>
        </div>
        
        <div class="flex-1 min-w-0">
          <h3 class="text-white font-bold text-base mb-1">${formattedTitle}</h3>
          <p class="text-white/95 text-sm leading-relaxed">${formattedMessage}</p>
        </div>
        
        <button class="flex-shrink-0 text-white/60 hover:text-white transition-colors duration-200" onclick="closeNotification('${id}')">
          <i class="fas fa-times text-lg"></i>
        </button>
      </div>
      
      <div class="h-1 bg-black/10">
        <div id="${id}-progress" class="${progressColor} h-full transition-all ease-linear" style="width: 100%;"></div>
      </div>
    </div>
  `;
  
  $('#notifications-container').append(notificationHTML);
  
  setTimeout(function() {
    $(`#${id}-progress`).css({
      'width': '0%',
      'transition-duration': `${duration}ms`
    });
  }, 50);
  
  setTimeout(function() {
    closeNotification(id);
  }, duration);
}

// Fonction pour créer une notification standard (LIT 100% DEPUIS CONFIG.LUA)
function createNotification(type, title, message, duration) {
  notificationId++;
  const id = 'notif-' + notificationId;
  
  // Valeurs par défaut au cas où la config n'est pas chargée
  let bgColor = 'bg-gray-600';
  let accentColor = 'bg-gray-400';
  let iconClass = 'fa-bell';
  let progressColor = 'bg-gray-300';
  
  // Lire DIRECTEMENT depuis la config
  if (configData && configData.Notifications && configData.Notifications[type]) {
    const notifConfig = configData.Notifications[type];
    bgColor = notifConfig.bgColor;
    accentColor = notifConfig.accentColor;
    iconClass = notifConfig.icon;
    progressColor = notifConfig.progressColor;
  }
  
  // Formater le titre et le message
  const formattedTitle = formatText(title);
  const formattedMessage = formatText(message);
  
  const notificationHTML = `
    <div id="${id}" class="animate-slideInRight rounded-xl ${bgColor} overflow-hidden relative">
      <div class="absolute left-0 top-0 bottom-0 w-1 ${accentColor}"></div>
      
      <div class="flex items-start gap-3 p-4 pl-5">
        <div class="flex-shrink-0 ${accentColor} rounded-full w-10 h-10 flex items-center justify-center">
          <i class="fas ${iconClass} text-white text-lg"></i>
        </div>
        
        <div class="flex-1 min-w-0">
          <h3 class="text-white font-bold text-base mb-1">${formattedTitle}</h3>
          <p class="text-white/95 text-sm leading-relaxed">${formattedMessage}</p>
        </div>
        
        <button class="flex-shrink-0 text-white/60 hover:text-white transition-colors duration-200" onclick="closeNotification('${id}')">
          <i class="fas fa-times text-lg"></i>
        </button>
      </div>
      
      <div class="h-1 bg-black/10">
        <div id="${id}-progress" class="${progressColor} h-full transition-all ease-linear" style="width: 100%;"></div>
      </div>
    </div>
  `;
  
  $('#notifications-container').append(notificationHTML);
  
  setTimeout(function() {
    $(`#${id}-progress`).css({
      'width': '0%',
      'transition-duration': `${duration}ms`
    });
  }, 50);
  
  setTimeout(function() {
    closeNotification(id);
  }, duration);
}

// Fonction pour afficher TOUTES les notifications (100% DYNAMIQUE)
function showAllNotifications() {
  if (!configData || !configData.Notifications) {
    return;
  }
  
  let delay = 0;
  
  // Parcourir AUTOMATIQUEMENT tous les types définis dans config.lua
  for (const [type, data] of Object.entries(configData.Notifications)) {
    setTimeout(() => {
      createNotification(
        type,
        type.charAt(0).toUpperCase() + type.slice(1), // Titre = nom du type capitalisé
        data.description, // Message = description du config
        2000
      );
    }, delay);
    delay += 1200;
  }
}

function closeNotification(id) {
  const notif = $('#' + id);
  
  if (notif.length) {
    notif.removeClass('animate-slideInRight').addClass('animate-slideOutRight');
    
    setTimeout(function() {
      notif.remove();
    }, 300);
  }
}

$('<style>')
  .text(`
    @keyframes slideInRight {
      from {
        transform: translateX(420px);
        opacity: 0;
      }
      to {
        transform: translateX(0);
        opacity: 1;
      }
    }
    
    @keyframes slideOutRight {
      from {
        transform: translateX(0);
        opacity: 1;
      }
      to {
        transform: translateX(420px);
        opacity: 0;
      }
    }
    
    .animate-slideInRight {
      animation: slideInRight 0.4s cubic-bezier(0.16, 1, 0.3, 1);
    }
    
    .animate-slideOutRight {
      animation: slideOutRight 0.3s cubic-bezier(0.7, 0, 0.84, 0);
    }
  `)
  .appendTo('head');