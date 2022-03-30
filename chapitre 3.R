###LES DONNÉES ET LA GESTION DES VALEURS MANQUANTES

La qualiré et la robustesse d'une analyse peut depende des données utilisée. les valeur manquanrzs peuvent etre recalculés pour avoir des series de données completes.
les valeurs extremes douvent eles ausse etre réévALUE.
qd les données sont manquantes et non observé -> il convient de les imputer.

#3types de données manquantes:
1) completement au hasard: ne dep pas d'autres variables tell que la vairable d'interet ou d'autres variable observés dans l'ens des donnes
2) au hasard: ne dep pas de la variable intzezr mais conditionner par dautres variables observé
3) non manquante au hasard'

pour les constater:
  - soit on les supprime
- soit on les impute: comble pour minimiser 

pb: les données peuvent être couteuse

methodes d'imputations:
- simple et implicite: s'appuie sur un algorithme. 
- la modelisation explicite: repose sur des modeles stat dans lesquels les hyp sont formulées explicitement.
-> unconditional mean
-> linear interpolation
_> regression imputation
-> expectation maximisation imputation

deux fonctions:
  - approx()
  - qpproxExtrap

#data PIB france
date<-c(1999,2001,2002,2003,2005,2007)
valuePIB<-c(1408,1545,1594,1637,1772,1946)
database<-data.frame(date,valuePIB)
date_complete<-seq(1999,2007,1)
plot(date,valuePIB,type = "o")
abline(v=date_complete,col="pink")

results<-approx(date,valuePIB,xout=date_complete,method = "linear",ties = "ordered")
#nous donne les valeurs manquantes et le PIB de ces valeurs manquantes


#extrapolation linéaire:
date_extra<-seq(1997,2007,1)
results_E<-approxExtrap(date_extra,valuePIB,xout=date_extra,method="linear",ties="ordered")
results_E

#exemple:
data<-read.csv(file = "C:/.../data_poids.csv",header = TRUE,seq=",")
head(data)
summary(data)
y<-as.vector(data$poids)
x1<-as.vector(data$sexe)
x2<-as.vector(data$taille)
x3<-as.vector(data$age)
x<-as.matrix(cbind(x1,x2,x3))

results<-lm(y)





'