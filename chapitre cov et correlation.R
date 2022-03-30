#analyse en composante principale ACP:
moyen de recuperer des informations
permet de resoudre pb de correlation entre les différentes variables.
EX: si 3 variables: on va reduire les dimensions pour pouvoir les projetter sur un plan

la correlation pose pb car:
  risque de compter en double les variables correlées.

on voit voir uniquement acp à partir de variable quantitative.
-> on oublie les variables qualitatives.

covariance: determiner les ecarts de deux variables par rapport a leur esperence respective.Elle correspond aux variations simultanées de ces deux variables.
-> comprise entre -1 et 1
-> independant de la causalité

correlation de pearson: calcule relation linéaire entre deux variabkles continues 
correlation de spearman: s appuie sur le rang de chacune des deux variables. Pour eviter les hypothèses de normalité.


#EXERCICE 1: faire la fonction de covariance
covar<-function(v1,v2){
  sum<-0
  for (i in 1:length(v1)) {
    xixbar<-v1[i]-mean(v1[i])
    yiybar<-v2[i]-mean(v2[i])
    sum<-sum+xixbar*yiybar
}
covxy<-sum/length(v1)
return(covxy)
}
v1<-c(1,3,5,6)
v2<-c(4,2,8,1)
covar(v1,v2)
cov(v1,v2)


#EXERCICE 2: faire la fonction permettant de calculer la correlation
correl<-function(x,y){
  correl<-covar(x,y)/(sd(x)*sd(y))
  return(correl)
}
#correlation de PEARSON

#si on avait voulu faire correlation de spearson il aurait fallu remplacer par des rangs. on regarde si les rangs d'une serie evolue de la même manière que les rangs d'une autre serie


database<-read.csv(
  
#calcul de la covariance;
  covar(database$FD,database$)

install.packages("corrplot")
library(corrplot)

#recuperation des valeurs dans une matrice
mat_variables<-as.matrix(cbind(database$FD,database$FI,database$FM,database$croissancePib), ncol(4))

head(mat_variables)

#nom e colonne
colnames(mat_variables)=c("FD","FI","FM","PIB")

#affichages des premieres lignes:
head(mat_variables)

M_corr<-cor(mat_variables)
print(M_corr)

#plot matrice

coorplot(M_corr, method="color", type="upper",addCoef.col="black",number.cex=0.75)









