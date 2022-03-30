###PROJET ECONOMÉTRIE BRUNE CROISIER

#PARTIE 1: FONCTIONS

#Question 1----

#La moyenne:
moyenne<-function(vect){
  x<-sum(vect) #j'utilise la fonction sum pour la faire la somme des xi
  xbarre <-x/length(vect) # je devisie par la taille du vecteur afin de calculer la moyenne
  return(xbarre)
}

#l'écart-type:
ecarttype<-function(vect){
  SC<-0 # initialise la somme des carrées
  xbarre<-moyenne(vect) #on stocke la moyenne dans xbarre
  for (compteur in 1:length(vect)){
    SC<-SC+((vect[compteur]-xbarre)^2) # avec xbarre la moyenne 
    }
    sigma <- (SC/length(vect))^1/2 # car on doit diviser par la taille du vecteur pour avoir l'ecartype
  return(sigma)
}
 
#Skewness:
skewness<-function(vect){
  xbarre<-moyenne(vect) #on stocke la moyenne dans xbarre
  Scub <-0 #initialisation de la somme des cubes qui est au numerateur
  ecarttype<-ecarttype(vect) < #on stocke l'eccart type dans ecarttype
  for (compteur in 1:length(vect)){
    Scub <- Scub +((vect[compteur]-xbarre)^3)
    S <- (Scub/length(vect))/sigma^3 #on recopie la formule
  
return(S)
} 

#Kurtosis:

kurtosis<-function(vect){
  Squatre <- 0 #intitialisation de la somme des (xi-xbarre) puissance 4
for (compteur in 1:length(vect)) {
  Squatre<-Squatre+((vect[compteur]-xbarre)^4)
  k<-(Squatre/length(vect))/sigma^4
return(k)
}
}

#Question 2----
#Ho: les données suivent une loi normale
#H1: les données suivent pas une loi normale

testJB<-function(vect){
  JB<-0
  JB<- JB + (length(vect)/6)*((S^2)+((k-3)^2)/4)
return(JB)
}
  

  
#Question 3----
covxy<-vector(mode="numeric")
x<-vector(mode="numeric")
y<-vector(mode="numeric")

fonctioncov <- function(x,y){
  for (compteur in 1: length(x)){
    covxy<-0 #initialisation de la cov
    covxy =  sum((x[compteur]-moyenne(x))*(y[compteur]-moyenne(y)))/length(x-1) #application de la formule du cours
  return(covxy)
  }
}


#Question 4----
pearson<-function(x,y){
    corrdeP<-0
    corrdeP<-covxy/(ecarttype(x)*ecarttype(y))
    return(corrdeP)
  }

#Question 5----
spearman<-function(x,y){
  corrdeS<-0
  corrdeS<-
}
a revoir

on a le droit d'utiliser la fonction qui permet de calculer le rang
puis on change les vecteurs pour le transformer en rang'

#Question 6----
fonctioninterpol<-function(x,xa,xb,ya,yb){
  y<-ya+(yb-ya)*(x-xa)/(xb-xa)
  return(y)
}


#Question 7----
functioncoef<-function(X,Y){
  B<-solve(t(X)%*%X)%*%t(X)%*%Y #%*% pour pouvoir faire le produit matricielle
  return(B)
}


#Question 8----
#fonction minimum:
fonctionmin<-function(vect){
  for(compteur in 1:lenght(vect)){
    if(compteur==1){
      min<-vect[compteur]
    }else{
      if(vect[compteur]<min){
        min<-vect[compteur]
      }
    }
  }
}

return(min)

#fonction maximum

###Question 9----
###Question 10----
###Question 11----

fonctionstand<-function(vect)
  for (compteur in 1:length(vect)) {
    Xstand = (vect[compteur]-moyenne(vect)/ecarttype(vect) # (premiere ligne - la moyenne)/ ecart type de x
    vectstandar[compteur]<-Xstand # on remplit la valeur que l'on vient de calculer dans un nouveau vecteuri;e la valeur standardisé. puis on refait ca pour chaque valeur.
  }
return(vectstandar)

a revoir

###Question 12----
fonction_minmax<-function(vect){
  for(compteur in 1:length(vect)){
    Xmm <- (vect[compteur]-min(vect))/(max(vect)-min(vect))
return(vectmm)
  }
}
remplacer min et max par les fonctions developper dans la question8

###Question 13----

#PARTIE 2: RÉCUPERATION ET RETRAITEMENT DES DONNÉES

#1: importer les données et les stocker dans une variable

data_base <- read.csv("~/Desktop/L3 DAUPHINE/Semestre 2/introduction à R/projet R/data_base.csv", header=FALSE, sep=";")
View(data_base)





#PARTIE 3: ANALYSE ET INTERPRÉTATION
