## Exercice d'atelier 1 : Détecter des erreurs R

# NOM :

# Bienvenue à votre premier exercice de codage en groupe !
# Pour chaque question ci-dessous, vous verrez un morceau de code contenant une ou plusieurs erreurs.
# Ces erreurs peuvent empêcher le code de s'exécuter,
# ou elles peuvent provoquer un comportement incorrect du code.
# Votre tâche est d'identifier et de corriger les erreurs dans le script.
# Les exercices seront évalués individuellement, même si le travail est effectué en groupe.


# 1. ARITHMÉTIQUE -----------------------------------------------------------
# Chaque bloc de code tente de résoudre un problème arithmétique particulier,
# mais contient une erreur. Identifiez et corrigez ces erreurs.


# A.
# Un patient a fait 12000 pas le lundi et 15000 pas le mardi.
# Le code ci-dessous tente de calculer le nombre moyen de pas pris par un patient.
# Code incorrect :
pas_lundi <- 12000
pas_mardi <- 15000
pas_moyen <- pas_lundi + pas_mardi / 2
pas_moyen

# B.
# Il y a 500 fumeurs dans une population de 20000.
# Le code ci-dessous tente de calculer le pourcentage de fumeurs dans la population.
# Code incorrect :
population_totale <- 20000
fumeurs <- 500
pourcentage_fumeurs <- (fumeurs ÷ population_totale) * 100
pourcentage_fumeurs


# 2. NOMMAGE D'OBJETS R -----------------------------------------------------
# Chaque bloc de code dans cette section tente de créer un objet R, mais contient
# une erreur liée aux règles de nommage des objets R.
# Identifiez et corrigez ces erreurs.

# A.
# Code incorrect :
1er_etudiant <- "John Doe"
1er_etudiant

# B.
# Code incorrect :
population totale <- 10000
population totale



# 3. UTILISATION INCORRECTE DE FONCTIONS -------------------------------------------------------
# Chaque bloc de code tente d'appeler une fonction, mais contient une erreur.
# Identifiez et corrigez ces erreurs.

# A.
# Le code ci-dessous tente de calculer la racine carrée d'un nombre.
# Code incorrect :
sqrt("16")

# B.
# Le code ci-dessous tente de calculer la racine carrée d'un nombre.
# Code incorrect :
sqrt[16]

# C.
# Le code ci-dessous tente d'obtenir les 5 premières lignes du dataframe iris
# Code incorrect :
head(5, iris)


# 4. IMBRICATION DE FONCTIONS / OBJETS INTERMÉDIAIRES --------------------------------------
# Chaque bloc de code contient une erreur liée à une imbrication incorrecte de fonctions
# ou à des objets intermédiaires

# A.
# Le code ci-dessous tente d'utiliser une imbrication de fonctions
# pour tracer les premières lignes (6 premières lignes) de l'ensemble de données 'women'.
# Identifiez et corrigez l'erreur.
# INDICE : Il s'agit de l'ordre des fonctions.
# Code incorrect :
head(plot(women))

# B.
# Le code ci-dessous tente de tracer les premières lignes (6 premières lignes) de l'ensemble de données 'women'
# en attribuant un objet intermédiaire.
# Cependant, il y a un problème à la deuxième ligne. Identifiez et corrigez-le.
# Code incorrect :
head_women <- head(women)
plot(head)
