# Analyse-de-S-ries-Temporelles-et-Statistiques-R-
📈 Analyse de Tendances Sanitaires (Statistiques R)

Ce projet académique porte sur l'étude statistique de l'évolution temporelle de pathologies. Il combine décomposition de séries temporelles et modélisation linéaire pour extraire des signaux significatifs à partir de données de santé hétérogènes.

🎯 Objectifs du Projet

Analyse de séries temporelles : Isoler la tendance de fond et les cycles saisonniers d'une pathologie.

Modélisation statistique : Quantifier le taux de croissance mensuel via une régression linéaire.

Visualisation avancée : Produire des graphiques décisionnels pour la veille sanitaire.

🛠️ Stack Technique

Langage : R

Fonctions clés : ts (time series), decompose (STL), lm (linear model).

🔍 Méthodologie

Prétraitement : Conversion des données brutes en objets temporels (ts) avec une fréquence mensuelle.

Décomposition : Séparation de la série en trois composantes (Tendance, Saisonnalité, Résidus) pour comprendre les pics saisonniers (ex: épidémies hivernales).

Inférence : Application d'un modèle linéaire sur la composante de tendance pour calculer un coefficient de croissance moyen.

📈 Visualisations

Le script génère un tableau de bord à deux panneaux :

Haut : Superposition de la série brute et de la droite de régression.

Bas : Focus sur le cycle saisonnier annuel.

🚀 Utilisation

Ouvrez le fichier health_trends_analysis.R dans RStudio et exécutez le script pour visualiser les sorties graphiques et le résumé statistique.