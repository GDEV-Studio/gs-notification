### 🔔 Export principal (notifications prédéfinies)

## 📌 Syntaxe générale
-- Export principal (notifications prédéfinies)
```lua
exports['gs-notification']:ShowNotification(type, titre, message, durée)
```

-- Export custom (créer vos propres notifications)
```lua
exports['gs-notification']:ShowCustomNotification(icone, bgColor, accentColor, titre, message, durée)
```

## 🎨 SYSTÈME DE FORMATAGE DU TEXTE
-- Retour à la ligne : \n ou [br]
```lua
exports['gs-notification']:ShowNotification('information', 'Info', 'Ligne 1\\nLigne 2\\nLigne 3', 5000)
```

-- Gras : **texte** ou [b]texte[/b]
```lua
exports['gs-notification']:ShowNotification('succes', '**Succès !**', 'Votre action est **réussie** !', 5000)
```

-- Italique : *texte* ou [i]texte[/i]
```lua
exports['gs-notification']:ShowNotification('information', 'Info', 'Message *important* à lire', 5000)
```

-- Souligné : __texte__ ou [u]texte[/u]
```lua
exports['gs-notification']:ShowNotification('avertissement', 'Attention', 'Ceci est __important__ !', 5000)
```

-- Code inline : `code` ou [code]code[/code]
```lua
exports['gs-notification']:ShowNotification('information', 'Commande', 'Utilisez `F1` pour ouvrir le menu', 5000)
```

-- Couleur : [color=couleur]texte[/color]
```lua
exports['gs-notification']:ShowNotification('evenement', 'Event', '[color=gold]⭐ EVENT SPÉCIAL ⭐[/color]', 6000)
```

-- Taille : [size=px]texte[/size]
```lua
exports['gs-notification']:ShowNotification('information', 'Info', '[size=18]Grand texte[/size]', 5000)
```

-- Combinaison multiple
```lua
exports['gs-notification']:ShowNotification(

    'succes',

    '**Mission Complétée**',

    '**Félicitations !**\\n\\nVous avez gagné:\\n• *5000$*\\n• __100 XP__\\n• `Badge Elite`',

    8000

)
```

## ✅ Côté CLIENT
-- Export principal
```lua
exports['gs-notification']:ShowNotification(type, titre, message, durée)
```
-- Export custom
```lua
exports['gs-notification']:ShowCustomNotification(icone, bgColor, accentColor, titre, message, durée)
```

## ✅ Côté SERVER
-- Export principal
```lua
exports['gs-notification']:ShowNotification(target, type, titre, message, durée)
```
-- Export custom
```lua
exports['gs-notification']:ShowCustomNotification(target, icone, bgColor, accentColor, titre, message, durée)
```