L ACP SUR R: ANALYSE EN COMPOSANTE PRINCIPALE
  
nous allons utiliser  des package FactoMineR (permet de faire les differetnes mesures) et factoextra (permet de visualiser nos resultats)
ôpur realiser une apc il faut utiliser la fonction PCA du package FactoMineR
-> cette fonction prend comme parametre: X (donner pour l'acp : les lignes sont les indiv et les colonne des variable numerique')
                                          scale.unit (variable bolean permettant dse mettre a l'echelle les données avec un z-score')
                                          comparable.ncp
                                          finaux.graph


install.packages("FactoMineR")
library(FactoMineR)
install.packages("factoextra")
library(factoextra)

#données obtenues a partir du package factoextra
data(decathlon2)
head(decathlon2)

nrow(decathlon2)
ncol(decathlon2)

#variables quantitatives pour PCA:

database_decat<-decathlon2[1:23,1:10]
head(database_decat)

#exemple APC:
results_PCA<-PCA(database_decat, scale.unit = TRUE,graph = FALSE) #sans graphique
results_PCA$eig #renvoit l'APC EN FONCTION DU PARAMETRE EIG
#-> le resultat montre que les 3 premieres composante explique 72%
#-> la dimension 1 explique 41%, la dimension 2 explique 18,38% ...

#affichage des resultats
print(results_PCA)

#obj: determinr les composantes qui ont un impact significatif

results_PCA<-PCA(database_decat, scale.unit = TRUE,graph = TRUE) #avec graphique
#sur le graphique on voit different signe associé a chaque variable. par exemple sur l'axe des ordonnée on peut voir que X1500m peut etre associé a la dimension 1. par contre javeline est entre la dimension 1 et 2
#dimension 1 = tout l'axe horizontale. 
# les fleches qui partent a gauche sont correlés de facon negative au fleche qui partent à droite

#affichage des valeurs propres:
eigenvalue<-get_eigenvalue(results_PCA)
#-> la 1ere valeur propre est celle qui a donc le plus d'influence
#somme a 10% car on a 10 variables
sum(eigenvalue[,1])

#somme a 100% si on utilise les 10 dimensions
sum(eigenvalue[,2])

#choix du nombre de dimensions/representation graphique
fviz_eig(results_PCA,addlabels = TRUE,ylim=c(0,50))
#ici on voit que la 6ème dimension est le "coude"i.e on voit QUE c'est la ou on a une chute brutale. c'est la premiere a apporté le moins d'info <=> on va garder seulement 5 dimensions.

#recuperation de tous les resultats associés a "var"
#resultats associes a var pour la pca
var_results_PCA<-get_pca_var(results_PCA)

#correlation entre les resultats et les composantes:
var_results_PCA$cor

#qualité de la representation des variables dans chaque dimension
var_results_PCA$cos2

#calcul de la contribution:


sum(var_results_PCA$contrib[1,])


#la somme de chaque colonne fait 1
sum(var_results_PCA$contrib[,1])

#visualisation sur le graphqiue pour les dim 1 et 2
fviz_pca_var(results_PCA,col.var = "black")

#visualisation des contributions a chaque dim
corrplot(results_PCA$cos2,is.corr = FALSE)


#FONCTION QUI PERMETTENT DE REGARDER LA CONTRIBUTION DE CHAQUE VARIABKE
#contribution de la variables a la composante 1
fviz_contrib(results_PCA,choice="var",axes=1,top=10)
#contribution de la variables a la composante 2
fviz_contrib(results_PCA,choice="var",axes=2,top=10)



res.desc<-dimdesc(results_PCA,axes = c(1:5),proba = 0.05) #0.5 = proba pour la signifiactivité, identifier les variables qui sont reelement significative.
#affichage  des correlations de varianle avec la troisieme composante
res.desc$Dim.1




