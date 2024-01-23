# TITRE DESCRIPTIF DU SCRIPT
# PRÉNOM NOM
# Date au format AAAA-MM-JJ

# RAPPEL : Veuillez revoir le document d'instructions et le script de démonstration de l'enseignant.

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 1. Charger les paquets ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pacman::p_load(tidyverse, here, janitor, esquisse)

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 2. Importer les données ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : Utilisez `read_csv()` et `here()` pour importer le jeu de données COVID depuis
# le dossier "data". N'oubliez pas d'utiliser l'opérateur d'assignation pour nommer le dataframe.






##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 3. Créer et exporter un tableau de fréquence ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION 1 : Utilisez la fonction `tabyl()` du package {janitor} pour 
# réaliser un tableau de fréquence de la variable `weekday_admit`.


# ASTUCE : N'oubliez pas d'assigner la sortie du tableau à un objet R nommé !

# INSTRUCTION 2 : Utilisez `write_csv()` et `here()` pour sauvegarder ce tableau dans votre dossier "outputs"




##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 4. Visualiser les données pour illustrer deux points clés ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : Ici, utilisez {esquisse} pour générer deux figures {ggplot2} 
# qui démontrent chacun des POINTS énumérés ci-dessous 
# (Si vous savez comment travailler directement avec ggplot, vous pouvez ignorer esquisse)

# POINT A : L'échantillon est principalement composé de personnes âgées, de plus de 50 ans
# Conseil : Le type de graphique recommandé est un HISTOGRAMME.



# POINT B : Une majorité de patients noirs avaient de l'hypertension 
# Conseil : Le type de graphique recommandé est un DIAGRAMME À BARRES.



##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 5. Exporter et sauvegarder les graphiques ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : Utilisez les fonctions `ggsave()` et `here()` pour sauvegarder vos graphiques dans le dossier "outputs".



##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 6. Présenter ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : Une personne de chaque groupe sera approchée par un instructeur et invitée à présenter son travail. 
# La personne sélectionnée devra, en environ 2 minutes : 
# - Partager l'une de ses figures du POINT A ou B ci-dessus, et l'expliquer
# - (Facultatif) Partagez votre figure de la section BONUS ci-dessous


##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## BONUS (travail facultatif non noté) ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Cette section est pertinente uniquement si vous avez terminé tôt ou si vous êtes ambitieux 
# QUESTION : Pour votre jeu de données assigné, 
# essayez de créer une figure unique ou une série de figures pour répondre à la question ci-dessous
# -- Quels groupes raciaux avaient une incidence plus élevée de diabète ?