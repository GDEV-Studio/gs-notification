Config = {}

Config.DevMode = true -- Active le mode développeur qui débloque les certaines commandes de test

Config.Notifications = {
    -- ✅ GÉNÉRAL (4 types)
    ['succes'] = {
        icon = 'fa-circle-check',
        bgColor = 'bg-emerald-600',
        accentColor = 'bg-emerald-400',
        progressColor = 'bg-emerald-300',
        description = 'Félicitations ! Votre action a été réalisée avec succès'
    },
    ['erreur'] = {
        icon = 'fa-circle-xmark',
        bgColor = 'bg-red-600',
        accentColor = 'bg-red-400',
        progressColor = 'bg-red-300',
        description = 'Oops ! Une erreur s\'est produite lors de l\'opération'
    },
    ['avertissement'] = {
        icon = 'fa-triangle-exclamation',
        bgColor = 'bg-amber-600',
        accentColor = 'bg-amber-400',
        progressColor = 'bg-amber-300',
        description = 'Attention ! Veuillez prendre note de cette information importante'
    },
    ['information'] = {
        icon = 'fa-circle-info',
        bgColor = 'bg-blue-600',
        accentColor = 'bg-blue-400',
        progressColor = 'bg-blue-300',
        description = 'Information générale à votre attention'
    },

    -- 💰 ARGENT / ÉCONOMIE (6 types)
    ['argent'] = {
        icon = 'fa-dollar-sign',
        bgColor = 'bg-green-600',
        accentColor = 'bg-green-400',
        progressColor = 'bg-green-300',
        description = 'Transaction réussie ! Argent crédité sur votre compte'
    },
    ['argent retire'] = {
        icon = 'fa-money-bill-wave',
        bgColor = 'bg-orange-600',
        accentColor = 'bg-orange-400',
        progressColor = 'bg-orange-300',
        description = 'Retrait effectué avec succès à votre demande'
    },
    ['salaire'] = {
        icon = 'fa-wallet',
        bgColor = 'bg-emerald-600',
        accentColor = 'bg-emerald-400',
        progressColor = 'bg-emerald-300',
        description = 'Votre salaire a été versé ! Bon travail !'
    },
    ['amende'] = {
        icon = 'fa-receipt',
        bgColor = 'bg-red-700',
        accentColor = 'bg-red-500',
        progressColor = 'bg-red-400',
        description = 'Une amende a été prélevée suite à une infraction'
    },
    ['banque'] = {
        icon = 'fa-building-columns',
        bgColor = 'bg-teal-700',
        accentColor = 'bg-teal-500',
        progressColor = 'bg-teal-400',
        description = 'Opération bancaire traitée avec succès'
    },
    ['crypto monnaie'] = {
        icon = 'fa-bitcoin-sign',
        bgColor = 'bg-purple-700',
        accentColor = 'bg-purple-500',
        progressColor = 'bg-purple-400',
        description = 'Transaction de crypto-monnaie confirmée sur la blockchain'
    },

    -- 🚗 VÉHICULES (6 types)
    ['vehicule'] = {
        icon = 'fa-car',
        bgColor = 'bg-blue-700',
        accentColor = 'bg-blue-500',
        progressColor = 'bg-blue-400',
        description = 'Votre véhicule vous attend devant le garage !'
    },
    ['vehicule range'] = {
        icon = 'fa-warehouse',
        bgColor = 'bg-indigo-600',
        accentColor = 'bg-indigo-400',
        progressColor = 'bg-indigo-300',
        description = 'Véhicule sécurisé dans le garage en toute sécurité'
    },
    ['reparation'] = {
        icon = 'fa-wrench',
        bgColor = 'bg-cyan-600',
        accentColor = 'bg-cyan-400',
        progressColor = 'bg-cyan-300',
        description = 'Réparations terminées ! Votre véhicule est comme neuf'
    },
    ['carburant'] = {
        icon = 'fa-gas-pump',
        bgColor = 'bg-yellow-600',
        accentColor = 'bg-yellow-400',
        progressColor = 'bg-yellow-300',
        description = 'Réservoir rempli ! Bonne route à vous'
    },
    ['cles vehicule'] = {
        icon = 'fa-key',
        bgColor = 'bg-amber-700',
        accentColor = 'bg-amber-500',
        progressColor = 'bg-amber-400',
        description = 'Clés du véhicule remises avec succès'
    },
    ['fourriere'] = {
        icon = 'fa-truck-tow',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'Votre véhicule a été emmené à la fourrière municipale'
    },

    -- 👮 POLICE / ILLÉGAL (6 types)
    ['recherche'] = {
        icon = 'fa-user-secret',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'ATTENTION ! Vous êtes activement recherché par les forces de l\'ordre'
    },
    ['prison'] = {
        icon = 'fa-handcuffs',
        bgColor = 'bg-gray-700',
        accentColor = 'bg-gray-500',
        progressColor = 'bg-gray-400',
        description = 'Vous avez été incarcéré pour vos actes délictueux'
    },
    ['fouille'] = {
        icon = 'fa-magnifying-glass',
        bgColor = 'bg-blue-800',
        accentColor = 'bg-blue-600',
        progressColor = 'bg-blue-500',
        description = 'Contrôle en cours - Veuillez coopérer avec les autorités'
    },
    ['menotte'] = {
        icon = 'fa-handcuffs',
        bgColor = 'bg-slate-700',
        accentColor = 'bg-slate-500',
        progressColor = 'bg-slate-400',
        description = 'Vous êtes menotté et placé en garde à vue'
    },
    ['contravention'] = {
        icon = 'fa-file-invoice',
        bgColor = 'bg-orange-700',
        accentColor = 'bg-orange-500',
        progressColor = 'bg-orange-400',
        description = 'Contravention dressée pour non-respect du code de la route'
    },
    ['radar automatique'] = {
        icon = 'fa-camera',
        bgColor = 'bg-red-600',
        accentColor = 'bg-red-400',
        progressColor = 'bg-red-300',
        description = 'Flash ! Excès de vitesse détecté par radar automatique'
    },

    -- 🏥 SANTÉ / BESOINS (6 types)
    ['soins'] = {
        icon = 'fa-heart-pulse',
        bgColor = 'bg-green-700',
        accentColor = 'bg-green-500',
        progressColor = 'bg-green-400',
        description = 'Soins prodigués avec succès - Vous êtes en meilleure santé'
    },
    ['inconscient'] = {
        icon = 'fa-skull',
        bgColor = 'bg-red-900',
        accentColor = 'bg-red-700',
        progressColor = 'bg-red-600',
        description = 'URGENT ! Vous êtes dans un état critique et inconscient'
    },
    ['ambulance'] = {
        icon = 'fa-truck-medical',
        bgColor = 'bg-red-600',
        accentColor = 'bg-red-400',
        progressColor = 'bg-red-300',
        description = 'Ambulance en route vers votre position - Tenez bon !'
    },
    ['faim'] = {
        icon = 'fa-burger',
        bgColor = 'bg-orange-700',
        accentColor = 'bg-orange-500',
        progressColor = 'bg-orange-400',
        description = 'Votre estomac crie famine - Il est temps de manger'
    },
    ['soif'] = {
        icon = 'fa-droplet',
        bgColor = 'bg-blue-600',
        accentColor = 'bg-blue-400',
        progressColor = 'bg-blue-300',
        description = 'Déshydratation détectée - Buvez quelque chose rapidement'
    },
    ['stress'] = {
        icon = 'fa-face-frown',
        bgColor = 'bg-purple-700',
        accentColor = 'bg-purple-500',
        progressColor = 'bg-purple-400',
        description = 'Niveau de stress élevé - Prenez le temps de vous détendre'
    },

    -- 💼 TRAVAIL / EMPLOIS (6 types)
    ['prise service'] = {
        icon = 'fa-briefcase',
        bgColor = 'bg-green-700',
        accentColor = 'bg-green-500',
        progressColor = 'bg-green-400',
        description = 'Prise de service effectuée - Bonne journée de travail !'
    },
    ['fin service'] = {
        icon = 'fa-door-open',
        bgColor = 'bg-gray-600',
        accentColor = 'bg-gray-400',
        progressColor = 'bg-gray-300',
        description = 'Fin de service enregistrée - Profitez de votre temps libre !'
    },
    ['livraison'] = {
        icon = 'fa-box',
        bgColor = 'bg-purple-600',
        accentColor = 'bg-purple-400',
        progressColor = 'bg-purple-300',
        description = 'Livraison complétée avec succès ! Félicitations'
    },
    ['recolte'] = {
        icon = 'fa-seedling',
        bgColor = 'bg-lime-600',
        accentColor = 'bg-lime-400',
        progressColor = 'bg-lime-300',
        description = 'Récolte abondante ! Ressources collectées avec soin'
    },
    ['fabrication'] = {
        icon = 'fa-hammer',
        bgColor = 'bg-amber-700',
        accentColor = 'bg-amber-500',
        progressColor = 'bg-amber-400',
        description = 'Objet fabriqué avec expertise artisanale'
    },
    ['minage'] = {
        icon = 'fa-gem',
        bgColor = 'bg-stone-700',
        accentColor = 'bg-stone-500',
        progressColor = 'bg-stone-400',
        description = 'Minerais précieux extraits des profondeurs'
    },

    -- 📱 COMMUNICATION (6 types)
    ['sms'] = {
        icon = 'fa-comment',
        bgColor = 'bg-sky-600',
        accentColor = 'bg-sky-400',
        progressColor = 'bg-sky-300',
        description = 'Nouveau message texte reçu sur votre téléphone'
    },
    ['appel'] = {
        icon = 'fa-phone',
        bgColor = 'bg-green-600',
        accentColor = 'bg-green-400',
        progressColor = 'bg-green-300',
        description = 'Appel entrant - Décrochez pour répondre'
    },
    ['courriel'] = {
        icon = 'fa-envelope',
        bgColor = 'bg-indigo-600',
        accentColor = 'bg-indigo-400',
        progressColor = 'bg-indigo-300',
        description = 'Vous avez reçu un nouveau courriel important'
    },
    ['discord'] = {
        icon = 'fa-brands fa-discord',
        bgColor = 'bg-indigo-700',
        accentColor = 'bg-indigo-500',
        progressColor = 'bg-indigo-400',
        description = 'Notification Discord - Nouveau message sur le serveur'
    },
    ['reseau social'] = {
        icon = 'fa-hashtag',
        bgColor = 'bg-sky-600',
        accentColor = 'bg-sky-400',
        progressColor = 'bg-sky-300',
        description = 'Nouvelle activité sur vos réseaux sociaux'
    },
    ['notification generale'] = {
        icon = 'fa-bell',
        bgColor = 'bg-purple-600',
        accentColor = 'bg-purple-400',
        progressColor = 'bg-purple-300',
        description = 'Notification importante à votre attention'
    },

    -- 🏠 IMMOBILIER / INVENTAIRE (6 types)
    ['propriete'] = {
        icon = 'fa-house',
        bgColor = 'bg-amber-700',
        accentColor = 'bg-amber-500',
        progressColor = 'bg-amber-400',
        description = 'Bienvenue chez vous ! Votre havre de paix personnel'
    },
    ['inventaire'] = {
        icon = 'fa-box-open',
        bgColor = 'bg-teal-600',
        accentColor = 'bg-teal-400',
        progressColor = 'bg-teal-300',
        description = 'Nouvel objet ajouté à votre inventaire personnel'
    },
    ['stockage'] = {
        icon = 'fa-box-archive',
        bgColor = 'bg-slate-600',
        accentColor = 'bg-slate-400',
        progressColor = 'bg-slate-300',
        description = 'Objet sécurisé dans votre espace de stockage'
    },
    ['arme'] = {
        icon = 'fa-gun',
        bgColor = 'bg-red-700',
        accentColor = 'bg-red-500',
        progressColor = 'bg-red-400',
        description = 'Arme équipée - Utilisez-la avec responsabilité'
    },
    ['armure'] = {
        icon = 'fa-shield',
        bgColor = 'bg-cyan-700',
        accentColor = 'bg-cyan-500',
        progressColor = 'bg-cyan-400',
        description = 'Protection renforcée ! Gilet pare-balles équipé'
    },
    ['drogue'] = {
        icon = 'fa-pills',
        bgColor = 'bg-lime-700',
        accentColor = 'bg-lime-500',
        progressColor = 'bg-lime-400',
        description = 'Substance illicite consommée - Effets en cours'
    },

    -- ⚙️ SYSTÈME / ADMIN (6 types)
    ['serveur'] = {
        icon = 'fa-server',
        bgColor = 'bg-purple-700',
        accentColor = 'bg-purple-500',
        progressColor = 'bg-purple-400',
        description = 'Annonce officielle du serveur - Information importante'
    },
    ['administration'] = {
        icon = 'fa-shield-halved',
        bgColor = 'bg-pink-600',
        accentColor = 'bg-pink-400',
        progressColor = 'bg-pink-300',
        description = 'Action administrative effectuée par un membre du staff'
    },
    ['signalement'] = {
        icon = 'fa-flag',
        bgColor = 'bg-violet-600',
        accentColor = 'bg-violet-400',
        progressColor = 'bg-violet-300',
        description = 'Votre signalement a été transmis à l\'équipe de modération'
    },
    ['evenement'] = {
        icon = 'fa-calendar-star',
        bgColor = 'bg-fuchsia-600',
        accentColor = 'bg-fuchsia-400',
        progressColor = 'bg-fuchsia-300',
        description = 'Événement spécial en cours ! Participez et gagnez des récompenses'
    },
    ['succes debloque'] = {
        icon = 'fa-trophy',
        bgColor = 'bg-yellow-600',
        accentColor = 'bg-yellow-400',
        progressColor = 'bg-yellow-300',
        description = 'Bravo ! Nouveau succès débloqué dans votre progression'
    },
    ['niveau'] = {
        icon = 'fa-arrow-up',
        bgColor = 'bg-cyan-600',
        accentColor = 'bg-cyan-400',
        progressColor = 'bg-cyan-300',
        description = 'Félicitations ! Vous avez gagné un niveau d\'expérience'
    },

    -- 🎰 DIVERTISSEMENT (6 types)
    ['magasin'] = {
        icon = 'fa-store',
        bgColor = 'bg-blue-700',
        accentColor = 'bg-blue-500',
        progressColor = 'bg-blue-400',
        description = 'Achat validé ! Merci pour votre transaction'
    },
    ['casino'] = {
        icon = 'fa-dice',
        bgColor = 'bg-red-700',
        accentColor = 'bg-red-500',
        progressColor = 'bg-red-400',
        description = 'Jackpot ! Lady Luck vous sourit ce soir'
    },
    ['loterie'] = {
        icon = 'fa-clover',
        bgColor = 'bg-green-700',
        accentColor = 'bg-green-500',
        progressColor = 'bg-green-400',
        description = 'Incroyable ! Vous avez remporté le gros lot de la loterie'
    },
    ['course'] = {
        icon = 'fa-flag-checkered',
        bgColor = 'bg-orange-700',
        accentColor = 'bg-orange-500',
        progressColor = 'bg-orange-400',
        description = 'Course terminée ! Résultats et classement disponibles'
    },
    ['preparation'] = {
        icon = 'fa-spray-can',
        bgColor = 'bg-purple-700',
        accentColor = 'bg-purple-500',
        progressColor = 'bg-purple-400',
        description = 'Personnalisation terminée ! Votre véhicule est unique'
    },
    ['assurance'] = {
        icon = 'fa-file-contract',
        bgColor = 'bg-blue-800',
        accentColor = 'bg-blue-600',
        progressColor = 'bg-blue-500',
        description = 'Contrat d\'assurance validé - Vous êtes maintenant protégé'
    },

    -- 🧑‍⚖️ JUSTICE / TRIBUNAL (10)
    ['convocation'] = {
        icon = 'fa-gavel',
        bgColor = 'bg-slate-800',
        accentColor = 'bg-slate-600',
        progressColor = 'bg-slate-500',
        description = 'Convocation officielle au tribunal - Présentez-vous à l\'audience'
    },
    ['audience'] = {
        icon = 'fa-scale-balanced',
        bgColor = 'bg-indigo-800',
        accentColor = 'bg-indigo-600',
        progressColor = 'bg-indigo-500',
        description = 'Audience en cours au palais de justice - La loi est souveraine'
    },
    ['acquittement'] = {
        icon = 'fa-stamp',
        bgColor = 'bg-emerald-700',
        accentColor = 'bg-emerald-500',
        progressColor = 'bg-emerald-400',
        description = 'Verdict : Acquitté ! Vous êtes libre de toute accusation'
    },
    ['condamnation'] = {
        icon = 'fa-landmark',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'Verdict : Coupable ! Peine prononcée par le tribunal'
    },
    ['plainte'] = {
        icon = 'fa-file-signature',
        bgColor = 'bg-violet-700',
        accentColor = 'bg-violet-500',
        progressColor = 'bg-violet-400',
        description = 'Plainte officielle déposée auprès des autorités judiciaires'
    },
    ['temoin'] = {
        icon = 'fa-user-check',
        bgColor = 'bg-blue-800',
        accentColor = 'bg-blue-600',
        progressColor = 'bg-blue-500',
        description = 'Témoignage enregistré - Votre déclaration est importante'
    },
    ['perquisition'] = {
        icon = 'fa-magnifying-glass',
        bgColor = 'bg-red-900',
        accentColor = 'bg-red-700',
        progressColor = 'bg-red-600',
        description = 'Perquisition en cours ! Mandat judiciaire exécuté'
    },
    ['mise a vue'] = {
        icon = 'fa-user-lock',
        bgColor = 'bg-gray-800',
        accentColor = 'bg-gray-600',
        progressColor = 'bg-gray-500',
        description = 'Placement en garde à vue pour interrogatoire'
    },
    ['liberation'] = {
        icon = 'fa-door-open',
        bgColor = 'bg-emerald-700',
        accentColor = 'bg-emerald-500',
        progressColor = 'bg-emerald-400',
        description = 'Libération immédiate ! Vous êtes libre de partir'
    },
    ['appel verdict'] = {
        icon = 'fa-rotate-left',
        bgColor = 'bg-amber-800',
        accentColor = 'bg-amber-600',
        progressColor = 'bg-amber-500',
        description = 'Appel du jugement déposé - Nouvelle audience programmée'
    },

    -- 🚓 POLICE / INTERVENTIONS (12)
    ['appel urgence'] = {
        icon = 'fa-phone-volume',
        bgColor = 'bg-red-700',
        accentColor = 'bg-red-500',
        progressColor = 'bg-red-400',
        description = 'URGENCE ! Appel d\'urgence reçu - Unités en route'
    },
    ['patrouille'] = {
        icon = 'fa-car-side',
        bgColor = 'bg-blue-900',
        accentColor = 'bg-blue-700',
        progressColor = 'bg-blue-600',
        description = 'Début de patrouille - Surveillance du secteur en cours'
    },
    ['fin patrouille'] = {
        icon = 'fa-circle-stop',
        bgColor = 'bg-slate-700',
        accentColor = 'bg-slate-500',
        progressColor = 'bg-slate-400',
        description = 'Fin de patrouille - Retour au commissariat autorisé'
    },
    ['interpellation'] = {
        icon = 'fa-user-large',
        bgColor = 'bg-orange-800',
        accentColor = 'bg-orange-600',
        progressColor = 'bg-orange-500',
        description = 'Suspect interpellé et placé en détention provisoire'
    },
    ['controle identite'] = {
        icon = 'fa-id-card',
        bgColor = 'bg-cyan-800',
        accentColor = 'bg-cyan-600',
        progressColor = 'bg-cyan-500',
        description = 'Contrôle d\'identité en cours - Présentez vos papiers'
    },
    ['controle routier'] = {
        icon = 'fa-road',
        bgColor = 'bg-indigo-800',
        accentColor = 'bg-indigo-600',
        progressColor = 'bg-indigo-500',
        description = 'Barrage routier - Contrôle de sécurité obligatoire'
    },
    ['saisie'] = {
        icon = 'fa-boxes-stacked',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'Saisie légale effectuée - Biens confisqués par la police'
    },
    ['renforts'] = {
        icon = 'fa-users',
        bgColor = 'bg-amber-800',
        accentColor = 'bg-amber-600',
        progressColor = 'bg-amber-500',
        description = 'Renforts policiers en route vers votre position'
    },
    ['alerte braquage'] = {
        icon = 'fa-bell',
        bgColor = 'bg-red-900',
        accentColor = 'bg-red-700',
        progressColor = 'bg-red-600',
        description = 'ALERTE ! Braquage en cours - Toutes les unités convergent'
    },
    ['alerte tirs'] = {
        icon = 'fa-gun',
        bgColor = 'bg-red-900',
        accentColor = 'bg-red-700',
        progressColor = 'bg-red-600',
        description = 'ALERTE ! Coups de feu signalés dans le secteur'
    },
    ['alerte course poursuite'] = {
        icon = 'fa-car-burst',
        bgColor = 'bg-orange-900',
        accentColor = 'bg-orange-700',
        progressColor = 'bg-orange-600',
        description = 'Course-poursuite en cours ! Suspect en fuite'
    },
    ['fin intervention'] = {
        icon = 'fa-clipboard-check',
        bgColor = 'bg-emerald-800',
        accentColor = 'bg-emerald-600',
        progressColor = 'bg-emerald-500',
        description = 'Intervention terminée - Rapport complété avec succès'
    },

    -- 🚑 EMS / MÉDICAL (10)
    ['prise en charge'] = {
        icon = 'fa-kit-medical',
        bgColor = 'bg-red-700',
        accentColor = 'bg-red-500',
        progressColor = 'bg-red-400',
        description = 'Patient pris en charge par l\'équipe médicale d\'urgence'
    },
    ['reanimation'] = {
        icon = 'fa-heart-circle-bolt',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'Réanimation cardio-respiratoire en cours ! Ne bougez pas'
    },
    ['stabilisation'] = {
        icon = 'fa-heart-pulse',
        bgColor = 'bg-emerald-800',
        accentColor = 'bg-emerald-600',
        progressColor = 'bg-emerald-500',
        description = 'État stabilisé - Signes vitaux revenus à la normale'
    },
    ['transfert hopital'] = {
        icon = 'fa-hospital',
        bgColor = 'bg-blue-800',
        accentColor = 'bg-blue-600',
        progressColor = 'bg-blue-500',
        description = 'Transfert immédiat vers l\'hôpital le plus proche'
    },
    ['sortie hopital'] = {
        icon = 'fa-person-walking-arrow-right',
        bgColor = 'bg-emerald-700',
        accentColor = 'bg-emerald-500',
        progressColor = 'bg-emerald-400',
        description = 'Sortie d\'hôpital autorisée - Prenez soin de vous'
    },
    ['urgence'] = {
        icon = 'fa-triangle-exclamation',
        bgColor = 'bg-amber-700',
        accentColor = 'bg-amber-500',
        progressColor = 'bg-amber-400',
        description = 'URGENCE MÉDICALE ! Assistance requise immédiatement'
    },
    ['dossier medical'] = {
        icon = 'fa-file-medical',
        bgColor = 'bg-indigo-700',
        accentColor = 'bg-indigo-500',
        progressColor = 'bg-indigo-400',
        description = 'Dossier médical mis à jour avec les dernières informations'
    },
    ['medicament'] = {
        icon = 'fa-pills',
        bgColor = 'bg-teal-700',
        accentColor = 'bg-teal-500',
        progressColor = 'bg-teal-400',
        description = 'Médicament prescrit et administré par le personnel soignant'
    },
    ['douleur'] = {
        icon = 'fa-face-frown',
        bgColor = 'bg-orange-700',
        accentColor = 'bg-orange-500',
        progressColor = 'bg-orange-400',
        description = 'Douleur intense ressentie - Traitement antalgique nécessaire'
    },
    ['fatigue'] = {
        icon = 'fa-bed',
        bgColor = 'bg-slate-700',
        accentColor = 'bg-slate-500',
        progressColor = 'bg-slate-400',
        description = 'Épuisement détecté - Repos fortement recommandé'
    },

    -- 🔧 MÉCANO / GARAGE (10)
    ['diagnostic'] = {
        icon = 'fa-magnifying-glass',
        bgColor = 'bg-cyan-800',
        accentColor = 'bg-cyan-600',
        progressColor = 'bg-cyan-500',
        description = 'Diagnostic complet effectué - Problèmes identifiés'
    },
    ['remorquage'] = {
        icon = 'fa-truck-tow',
        bgColor = 'bg-slate-800',
        accentColor = 'bg-slate-600',
        progressColor = 'bg-slate-500',
        description = 'Dépanneuse en route pour remorquer votre véhicule'
    },
    ['panne'] = {
        icon = 'fa-car-burst',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'Panne mécanique détectée - Intervention requise'
    },
    ['depanage'] = {
        icon = 'fa-screwdriver-wrench',
        bgColor = 'bg-amber-800',
        accentColor = 'bg-amber-600',
        progressColor = 'bg-amber-500',
        description = 'Dépannage express réalisé sur place avec succès'
    },
    ['piece changee'] = {
        icon = 'fa-gears',
        bgColor = 'bg-indigo-800',
        accentColor = 'bg-indigo-600',
        progressColor = 'bg-indigo-500',
        description = 'Pièce défectueuse remplacée par une pièce neuve'
    },
    ['facture garage'] = {
        icon = 'fa-file-invoice-dollar',
        bgColor = 'bg-blue-800',
        accentColor = 'bg-blue-600',
        progressColor = 'bg-blue-500',
        description = 'Facture du garage émise - Paiement requis'
    },
    ['peinture'] = {
        icon = 'fa-spray-can',
        bgColor = 'bg-fuchsia-700',
        accentColor = 'bg-fuchsia-500',
        progressColor = 'bg-fuchsia-400',
        description = 'Nouvelle peinture appliquée ! Votre véhicule brille'
    },
    ['controle technique'] = {
        icon = 'fa-clipboard-list',
        bgColor = 'bg-teal-800',
        accentColor = 'bg-teal-600',
        progressColor = 'bg-teal-500',
        description = 'Contrôle technique réglementaire effectué et validé'
    },
    ['vehicule prepare'] = {
        icon = 'fa-car-side',
        bgColor = 'bg-emerald-800',
        accentColor = 'bg-emerald-600',
        progressColor = 'bg-emerald-500',
        description = 'Véhicule prêt ! Toutes les réparations sont terminées'
    },
    ['vehicule livre'] = {
        icon = 'fa-truck-fast',
        bgColor = 'bg-sky-800',
        accentColor = 'bg-sky-600',
        progressColor = 'bg-sky-500',
        description = 'Véhicule livré à destination en parfait état'
    },

    -- 🏪 ENTREPRISES / COMMERCE (12)
    ['achat'] = {
        icon = 'fa-basket-shopping',
        bgColor = 'bg-blue-700',
        accentColor = 'bg-blue-500',
        progressColor = 'bg-blue-400',
        description = 'Achat validé et ajouté à votre panier ! Merci'
    },
    ['vente'] = {
        icon = 'fa-tags',
        bgColor = 'bg-emerald-700',
        accentColor = 'bg-emerald-500',
        progressColor = 'bg-emerald-400',
        description = 'Transaction réussie ! Article vendu avec profit'
    },
    ['commande'] = {
        icon = 'fa-clipboard',
        bgColor = 'bg-indigo-700',
        accentColor = 'bg-indigo-500',
        progressColor = 'bg-indigo-400',
        description = 'Commande enregistrée - Préparation en cours'
    },
    ['commande prete'] = {
        icon = 'fa-box-open',
        bgColor = 'bg-emerald-800',
        accentColor = 'bg-emerald-600',
        progressColor = 'bg-emerald-500',
        description = 'Votre commande est prête ! Passez la récupérer'
    },
    ['rupture stock'] = {
        icon = 'fa-triangle-exclamation',
        bgColor = 'bg-amber-700',
        accentColor = 'bg-amber-500',
        progressColor = 'bg-amber-400',
        description = 'Article en rupture de stock - Réapprovisionnement prévu'
    },
    ['livraison effectuee'] = {
        icon = 'fa-truck',
        bgColor = 'bg-sky-700',
        accentColor = 'bg-sky-500',
        progressColor = 'bg-sky-400',
        description = 'Livraison effectuée avec succès ! Colis remis en mains propres'
    },
    ['pourboire'] = {
        icon = 'fa-hand-holding-dollar',
        bgColor = 'bg-green-700',
        accentColor = 'bg-green-500',
        progressColor = 'bg-green-400',
        description = 'Pourboire généreux reçu ! Merci pour votre générosité'
    },
    ['reduction'] = {
        icon = 'fa-percent',
        bgColor = 'bg-violet-700',
        accentColor = 'bg-violet-500',
        progressColor = 'bg-violet-400',
        description = 'Réduction exceptionnelle appliquée sur votre achat !'
    },
    ['contrat signe'] = {
        icon = 'fa-file-signature',
        bgColor = 'bg-indigo-800',
        accentColor = 'bg-indigo-600',
        progressColor = 'bg-indigo-500',
        description = 'Contrat commercial signé et officiellement validé'
    },
    ['emploi'] = {
        icon = 'fa-user-tie',
        bgColor = 'bg-slate-700',
        accentColor = 'bg-slate-500',
        progressColor = 'bg-slate-400',
        description = 'Information d\'emploi mise à jour dans votre dossier'
    },
    ['embauche'] = {
        icon = 'fa-user-plus',
        bgColor = 'bg-emerald-800',
        accentColor = 'bg-emerald-600',
        progressColor = 'bg-emerald-500',
        description = 'Bienvenue dans l\'équipe ! Embauche confirmée'
    },
    ['licenciement'] = {
        icon = 'fa-user-xmark',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'Rupture du contrat de travail - Licenciement effectif'
    },

    -- 🏠 PROPRIÉTÉS / LOCATION (10)
    ['cle propriete'] = {
        icon = 'fa-key',
        bgColor = 'bg-amber-800',
        accentColor = 'bg-amber-600',
        progressColor = 'bg-amber-500',
        description = 'Clés de votre propriété remises ! Vous êtes chez vous'
    },
    ['location'] = {
        icon = 'fa-file-contract',
        bgColor = 'bg-indigo-700',
        accentColor = 'bg-indigo-500',
        progressColor = 'bg-indigo-400',
        description = 'Bail de location signé - Bienvenue dans votre nouveau logement'
    },
    ['loyer paye'] = {
        icon = 'fa-house-circle-check',
        bgColor = 'bg-emerald-700',
        accentColor = 'bg-emerald-500',
        progressColor = 'bg-emerald-400',
        description = 'Loyer mensuel payé à temps ! Merci pour votre ponctualité'
    },
    ['loyer impaye'] = {
        icon = 'fa-house-circle-xmark',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'ATTENTION ! Loyer impayé - Risque d\'expulsion'
    },
    ['facture'] = {
        icon = 'fa-file-invoice',
        bgColor = 'bg-slate-700',
        accentColor = 'bg-slate-500',
        progressColor = 'bg-slate-400',
        description = 'Nouvelle facture émise - Paiement requis avant échéance'
    },
    ['eau'] = {
        icon = 'fa-faucet-drip',
        bgColor = 'bg-sky-700',
        accentColor = 'bg-sky-500',
        progressColor = 'bg-sky-400',
        description = 'Facture d\'eau reçue - Consommation du mois écoulé'
    },
    ['electricite'] = {
        icon = 'fa-bolt',
        bgColor = 'bg-yellow-700',
        accentColor = 'bg-yellow-500',
        progressColor = 'bg-yellow-400',
        description = 'Facture d\'électricité - Relevé de votre consommation'
    },
    ['securite'] = {
        icon = 'fa-shield',
        bgColor = 'bg-cyan-800',
        accentColor = 'bg-cyan-600',
        progressColor = 'bg-cyan-500',
        description = 'Système de sécurité activé - Propriété sécurisée'
    },
    ['alarme'] = {
        icon = 'fa-bell',
        bgColor = 'bg-red-900',
        accentColor = 'bg-red-700',
        progressColor = 'bg-red-600',
        description = 'ALARME ! Intrusion détectée dans votre propriété'
    },
    ['visite'] = {
        icon = 'fa-person-walking',
        bgColor = 'bg-purple-700',
        accentColor = 'bg-purple-500',
        progressColor = 'bg-purple-400',
        description = 'Visite programmée de votre bien immobilier'
    },

    -- 🎉 ÉVÉNEMENTS RP (10)
    ['annonce mairie'] = {
        icon = 'fa-bullhorn',
        bgColor = 'bg-fuchsia-700',
        accentColor = 'bg-fuchsia-500',
        progressColor = 'bg-fuchsia-400',
        description = 'Communiqué officiel de la mairie - Écoutez attentivement'
    },
    ['concert'] = {
        icon = 'fa-music',
        bgColor = 'bg-indigo-800',
        accentColor = 'bg-indigo-600',
        progressColor = 'bg-indigo-500',
        description = 'Concert exceptionnel ce soir ! Réservez vos places'
    },
    ['fete'] = {
        icon = 'fa-champagne-glasses',
        bgColor = 'bg-amber-700',
        accentColor = 'bg-amber-500',
        progressColor = 'bg-amber-400',
        description = 'Grande fête organisée ! Venez célébrer avec nous'
    },
    ['reunion'] = {
        icon = 'fa-people-group',
        bgColor = 'bg-slate-700',
        accentColor = 'bg-slate-500',
        progressColor = 'bg-slate-400',
        description = 'Réunion importante programmée - Présence obligatoire'
    },
    ['tournoi'] = {
        icon = 'fa-trophy',
        bgColor = 'bg-yellow-700',
        accentColor = 'bg-yellow-500',
        progressColor = 'bg-yellow-400',
        description = 'Tournoi officiel lancé ! Inscrivez-vous et gagnez'
    },
    ['chasse tresor'] = {
        icon = 'fa-map',
        bgColor = 'bg-lime-700',
        accentColor = 'bg-lime-500',
        progressColor = 'bg-lime-400',
        description = 'Chasse au trésor mystérieuse ! Partez à l\'aventure'
    },
    ['braquage'] = {
        icon = 'fa-mask',
        bgColor = 'bg-red-900',
        accentColor = 'bg-red-700',
        progressColor = 'bg-red-600',
        description = 'ALERTE ! Braquage criminel en cours dans la ville'
    },
    ['negociation'] = {
        icon = 'fa-handshake',
        bgColor = 'bg-teal-800',
        accentColor = 'bg-teal-600',
        progressColor = 'bg-teal-500',
        description = 'Négociations en cours - Accord commercial possible'
    },
    ['tension'] = {
        icon = 'fa-bolt-lightning',
        bgColor = 'bg-orange-800',
        accentColor = 'bg-orange-600',
        progressColor = 'bg-orange-500',
        description = 'Tensions croissantes dans la zone - Soyez vigilant'
    },
    ['annonce importante'] = {
        icon = 'fa-triangle-exclamation',
        bgColor = 'bg-red-800',
        accentColor = 'bg-red-600',
        progressColor = 'bg-red-500',
        description = 'ANNONCE URGENTE ! Information capitale pour tous'
    },
}