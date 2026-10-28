# Fiche de cadrage : Priorisation des avis négatifs

> Remplir chaque rubrique en une à trois phrases. Les rubriques marquées (obligatoire) sont vérifiées par `pytest`.

## Besoin en une phrase (obligatoire)

Classer les avis e-commerce afin de présenter en priorité au service client ceux qui expriment une insatisfaction.

## Utilisateur final (obligatoire)

Les agents du service client consultent une file priorisée et décident eux-mêmes des réponses et des actions à entreprendre.

## Approche retenue (obligatoire)

Cocher une seule case :

- [ ] Règles métier
- [x] Machine learning
- [ ] RAG
- [ ] Modèle génératif seul

## Justification (obligatoire, citer au moins deux critères de la grille : (a) données étiquetées, (b) vérifiabilité, (c) coût par requête, (d) conséquence d'une erreur)

(a) Les avis peuvent être annotés en négatif ou non négatif selon un guide commun, ce qui permet un apprentissage supervisé. (c) Un classifieur TF-IDF et régression logistique offre un coût faible pour des milliers d'avis. (b) Ses performances se vérifient sur des avis indépendants et (d) privilégier le rappel réduit le nombre de clients insatisfaits oubliés.

## Données nécessaires et leur origine (obligatoire)

Pour le prototype du cours, utiliser les avis fictifs de data/sample_reviews.csv ; leur faible nombre ne permet pas de valider les performances. Prévoir ensuite un corpus public anonymisé ou fictif plus large, annoté par deux personnes avec arbitrage des désaccords et séparation entraînement, validation et test sans avis dupliqués entre lots.

## Métrique de succès et seuil d'acceptation (obligatoire)

Objectifs proposés sur un test indépendant d'au moins 200 avis dont 100 négatifs : rappel négatif supérieur ou égal à 0,90 et précision négative supérieure ou égale à 0,80. Fixer le seuil sur la validation puis mesurer une seule fois sur le test, en rapportant les effectifs et la matrice de confusion.

## Conséquence d'une erreur et validation humaine prévue (obligatoire)

Un faux négatif retarde le traitement d'une réclamation ; un faux positif occupe inutilement un agent. Un agent relit chaque avis prioritaire avant de répondre et contrôle régulièrement un échantillon des autres avis ; aucune suppression ni réponse automatique n'est prévue.

## Risques éthiques ou de confidentialité (obligatoire)

Retirer noms, coordonnées et numéros de commande avant utilisation, et ne pas déposer d'avis clients réels dans le projet. Examiner séparément les erreurs sur les langues et formes d'expression représentées dans le corpus pour repérer les biais et les limites liées à l'ironie.

## Approche écartée et pourquoi (facultatif)

Des règles fondées uniquement sur des mots négatifs sont écartées car elles gèrent mal les négations et les formulations variées ; elles pourront servir de référence simple lors de l'évaluation.

