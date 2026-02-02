#Exercice 1:

#1) Afficher le jeu de données iris puis afficher la classe de l'objet iris.
iris
class(iris)

#2) Afficher le jeu de données iris dans une vue avec la fonction View("
View(iris)

#3) Afficher le nombre de lignes avec la fonction nrow()
nrow(iris)

#4) Afficher le nombre de colonne avec la fonction ncol()
ncol(iris)

#5) Afficher le nom des colonnes avec la fonction colnames()
colnames(iris) 

#6) Afficher un résumé du dataframe avec la fonction summary()
summary(iris)

#7) Afficher uniquement les colonnes Sepal.Length et Species.
iris[ , c("Sepal.Length", "Species")]

#8) Afficher uniquement la ligne 100,103 et 105
iris[c(100,103,105), ]

#9) Afficher uniquement les lignes 50 à 100.
iris[c(50:100), ]

#10) Calculer la moyenne de la variable Sepal.Length.
mean(iris$Sepal.Length)

#11) Calculer la médiane de la variable Sepal.Width
median(iris$Sepal.Length)

#12) Calculer l'écart-type de la variable Petal.Length
sd(iris$Petal.Length)

#13) Calculer les déciles de la variable Petal.Width.
quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by =0.1))


#Exercice 2:

#1) Importer le jeu de données manga.csv dans un objet appelé dfManga et le jeu de données anime.csv dans 
#un objet appelé dfAnime. Puis afficher la classe des deux objets pour vérifier que la classe est data.frame.
dfanime = read.csv("L:/BUT/SD/Promo 2025/ebenhamou/R/anime.csv", header = TRUE, sep = ",", dec = ".")
dfmanga = read.csv("L:/BUT/SD/Promo 2025/ebenhamou/R/manga.csv", header = TRUE, sep = ",", dec = ".")
class(dfanime)
class(dfmanga)

#2) Afficher les jeux de données dans des vues pour les visualiser
View(dfanime)
View(dfmanga)

#3) Afficher le nombre de lignes et colonnes avec la fonction dim()
dim(dfmanga)
dim(dfanime)

mean(dfmanga$Score)
mean(dfanime$Score)

sum(dfmanga$Vote)
sum(dfanime$Vote)

sd(dfmanga$Score)
sd(dfanime$Score)

quantile(dfmanga$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
quantile(dfanime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))


#exercice3: 
extraction1 <- subset(dfmanga, Score > 9)
nrow(extraction1)

extraction2 <- subset(dfmanga, Vote >= 200000)
nrow(extraction2)

extraction3 <- subset(dfmanga, Vote >= 200000 & Score >= 8)
nrow(extraction3)