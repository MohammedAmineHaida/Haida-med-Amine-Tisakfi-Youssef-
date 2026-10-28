# Fiche de cadrage : Questions sur le règlement intérieur

> Remplir chaque rubrique en une à trois phrases. Les rubriques marquées (obligatoire) sont vérifiées par `pytest`.

## Besoin en une phrase (obligatoire)

Répondre aux questions sur le règlement intérieur de l'école en citant les articles de la version officielle applicable.

## Utilisateur final (obligatoire)

Les étudiants et le personnel administratif consultent l'assistant ; le service de scolarité tranche les situations individuelles ou ambiguës.

## Approche retenue (obligatoire)

Cocher une seule case :

- [ ] Règles métier
- [ ] Machine learning
- [x] RAG
- [ ] Modèle génératif seul

## Justification (obligatoire, citer au moins deux critères de la grille : (a) données étiquetées, (b) vérifiabilité, (c) coût par requête, (d) conséquence d'une erreur)

(a) Le règlement existe déjà, mais aucun corpus de questions-réponses annotées n'est supposé disponible. (b) Le RAG permet de retrouver les passages pertinents et d'associer la réponse à une référence vérifiable. (c) Un index documentaire limite le contexte transmis au modèle et (d) une absence de source doit déclencher une abstention et une orientation vers la scolarité.

## Données nécessaires et leur origine (obligatoire)

Indexer uniquement le règlement officiel et ses annexes validées par l'administration, avec version, date d'effet, article et page. Constituer 60 questions de test relues par la scolarité : 40 couvertes par les documents et 20 hors périmètre ou ambiguës.

## Métrique de succès et seuil d'acceptation (obligatoire)

Objectifs proposés : au moins 90 % de réponses correctes et étayées sur les 40 questions couvertes, une référence vérifiable pour chaque réponse substantielle et au moins 95 % d'abstentions appropriées sur les 20 autres. Une personne de la scolarité vérifie la fidélité au texte et la validité des citations.

## Conséquence d'une erreur et validation humaine prévue (obligatoire)

Une réponse erronée peut induire un étudiant en erreur sur une démarche ou un délai. L'assistant fournit la source à consulter, s'abstient si elle ne suffit pas et renvoie à la scolarité avant toute décision individuelle ayant une conséquence administrative.

## Risques éthiques ou de confidentialité (obligatoire)

N'indexer aucun dossier étudiant et utiliser des questions fictives sans identité dans le TP. Prévoir une durée limitée de conservation des questions et traiter les instructions éventuellement présentes dans les documents comme du contenu, sans leur donner autorité sur l'assistant.

## Approche écartée et pourquoi (facultatif)

Le modèle génératif seul est écarté car il peut inventer un article ou utiliser un règlement obsolète sans source vérifiable.

