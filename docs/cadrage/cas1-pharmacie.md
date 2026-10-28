# Fiche de cadrage : Ordonnances incomplètes en pharmacie

> Remplir chaque rubrique en une à trois phrases. Les rubriques marquées (obligatoire) sont vérifiées par `pytest`.

## Besoin en une phrase (obligatoire)

Signaler au pharmacien les champs manquants d'une ordonnance afin de faciliter son contrôle de complétude avant toute délivrance.

## Utilisateur final (obligatoire)

Le pharmacien utilise les alertes au comptoir et reste responsable du contrôle final de chaque ordonnance.

## Approche retenue (obligatoire)

Cocher une seule case :

- [x] Règles métier
- [ ] Machine learning
- [ ] RAG
- [ ] Modèle génératif seul

## Justification (obligatoire, citer au moins deux critères de la grille : (a) données étiquetées, (b) vérifiabilité, (c) coût par requête, (d) conséquence d'une erreur)

(b) Les champs attendus sont définis dans une grille validée par le pharmacien : chaque alerte renvoie à une règle explicite. (c) Leur contrôle déterministe a un coût faible par requête et (a) ne nécessite pas de corpus annoté pour entraîner un modèle. (d) Une omission pouvant avoir des conséquences graves, le système assiste le contrôle humain sans autoriser automatiquement la délivrance.

## Données nécessaires et leur origine (obligatoire)

Utiliser une grille de champs attendus fournie et validée par le pharmacien et des ordonnances entièrement fictives, structurées pour le prototype. La reconnaissance de documents manuscrits reste hors périmètre ; un champ illisible est signalé pour vérification humaine.

## Métrique de succès et seuil d'acceptation (obligatoire)

Objectif proposé : détecter 100 % des champs obligatoires absents sur 100 ordonnances fictives indépendantes, incluant champs vides, illisibles et combinaisons d'omissions, avec au plus 5 % de fausses alertes. Ce seuil reste à valider avec le pharmacien et ne démontre pas la sûreté clinique.

## Conséquence d'une erreur et validation humaine prévue (obligatoire)

Une ordonnance incomplète manquée peut conduire à une délivrance inappropriée ; une fausse alerte ralentit le service. Le pharmacien examine chaque ordonnance et les alertes avant toute délivrance, même lorsque le système ne signale rien.

## Risques éthiques ou de confidentialité (obligatoire)

Les ordonnances contiennent des informations sensibles : le TP utilise uniquement des données fictives, sans identité ni historique réel. Limiter les accès et ne pas conserver le contenu des ordonnances dans les journaux.

## Approche écartée et pourquoi (facultatif)

Le modèle génératif seul est écarté : ses sorties ne garantissent pas l'application exhaustive et reproductible des règles de complétude.

