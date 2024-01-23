# TITRE DESCRIPTIF DU SCRIPT
# PRÉNOM NOM
# Date au format AAAA-MM-JJ


##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 1. Charger les paquets ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# NOTE : Pas besoin d'exécuter le code ci-dessous si vous avez {pacman} installé.
# if(!require(pacman)) install.packages("pacman")

pacman::p_load(tidyverse, here, janitor, esquisse)

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 2. Importer les données ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : Ici, utilisez `read_csv()` et `here()` pour charger votre jeu de données depuis le dossier "data"
# Le jeu de données dont vous avez besoin doit avoir le même nom que votre script.

read_csv(here("____/TEACHER_DEMO_sex_attitudes_survey_uk.csv"))

# Afficher les premières lignes des données
head(uk)

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 3. Créer et exporter un tableau de fréquence ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : Utilisez la fonction `tabyl()` du package {janitor} pour 
# réaliser un tableau de fréquence de la variable `rnssecgp_6` (statut professionnel).
# Ensuite, utilisez `write_csv()` et `here()` pour sauvegarder ce tableau dans votre dossier "outputs"

tabyl(uk, _______________)

tableau_profession <- ______

write_csv(x = ________, file = ____("_______/_____.csv"))

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 4. Créer des graphiques pour montrer les POINTS A & B ci-dessous, puis les exporter ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : Ici, utilisez {esquisse} pour générer deux figures {ggplot2} 
# qui démontrent chacun des POINTS énumérés ci-dessous 
# (Si vous savez comment travailler directement avec ggplot, vous pouvez ignorer esquisse)
# Ensuite, utilisez les fonctions `ggsave()` et `here()` pour sauvegarder vos graphiques dans le dossier "outputs"

# POINT A : Une pluralité de répondants sont dans le groupe d'âge de 25-34 ans (variable `agrp`)
# POINT B : Parmi les répondants âgés de 65 à 74 ans, une grande proportion considère la religion comme "Assez importante" (variable `religimp`)

esquisser(__)

age_religimp <- 
  uk %>%
  ggplot() +
  aes(x = agrp, fill = religimp) +
  geom_bar() +
  scale_fill_hue(direction = 1) +
  theme_minimal()

ggsave(plot = _________,
       filename = _________)


##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 5. Soumettre votre travail ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : 
# Pour soumettre, enregistrez et téléchargez votre script R completé sur la page de l'assignation.





##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 6. Présenter ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION : Une personne de chaque groupe sera approchée par un instructeur et invitée à présenter son travail. 
# La personne sélectionnée devra, en environ 2 minutes : 
# - Partager l'une de ses figures des POINTS A ou B ci-dessus, et l'expliquer
# - (Facultatif) Partagez votre figure de la section BONUS ci-dessous


##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## BONUS (travail facultatif non noté) ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Cette section est pertinente uniquement si vous avez terminé tôt ou si vous êtes ambitieux 
# QUESTION : Pour votre jeu de données assigné, 
# essayez de créer une figure unique ou une série de figures pour répondre à la question ci-dessous
# -- Parmi les questions "d'accord avec l'opinion" (les variables commençant par `sn`, de `snpres` à `snearly`), lesquelles présentent les plus grandes différences entre les répondants masculins et féminins ?

uk %>%
  select(rsex, starts_with("sn")) %>% 
  group_by(rsex) %>% 
  pivot_longer(
    cols = -rsex, 
    names_to = "question", 
    values_to = "answer"
  ) %>% 
  filter(!is.na(answer)) %>% 
  group_by(rsex, question) %>% 
  summarise(proportion_who_agree = mean(answer == "Agree" | 
                                          answer == "Agree strongly"),
            .groups = 'drop') %>% 
  mutate(question = case_when(
    question == "snearly" ~ "Les jeunes d'aujourd'hui\ncommencent à avoir des relations sexuelles trop tôt",
    question == "snmedia" ~ "Trop de sexe\ndans les médias",
    question == "snsexdrv" ~ "Les hommes ont naturellement\nune libido plus forte que les femmes",
    question == "snold" ~ "Naturel pour les gens de vouloir\nmoins de sexe en vieillissant",
    question == "snpres" ~ "Les gens sont sous\npression pour avoir des relations sexuelles",
    question == "snnolov" ~ "Le sexe sans\namour est acceptable",
    TRUE ~ question
  )) %>% 
  pivot_wider(id_cols = question, names_from = rsex, values_from = proportion_who_agree) %>% 
  mutate(diff = Homme - Femme) %>% 
  mutate(question = fct_reorder(question, diff)) %>% 
  pivot_longer(cols = c("Femme", "Homme"), values_to = "proportion_who_agree", 
               names_to = "rsex") %>% 
  ggplot() +
  geom_col(aes(x = proportion_who_agree, fill = rsex, y = question), 
           position = "dodge") +
  geom_label(aes(x = proportion_who_agree, y = question, 
                 label = scales::percent(proportion_who_agree)),
             position = position_dodge2(width = 0.9)) +
  scale_fill_brewer(palette = "Set2", 
                    breaks = c("Homme", "Femme"), 
                    name = "Sexe") +
  scale_x_continuous(limits = c(0, 1), 
                     labels = scales::percent, 
                     name = "Pourcentage de sexe qui sont d'accord ou tout à fait d'accord",
  ) + 
  scale_y_discrete(name = "") +
  ggtitle("Proportion qui sont d'accord avec les déclarations sur le comportement sexuel par genre") +
  theme_minimal() + 
  theme(axis.text.y = element_text(size =
                                     
                                     11, face = "bold"), 
        titre.plot = element_text(size = 15, face = "bold", hjust = 0.5),
        position.titre.plot = "plot")
