###EXERCICES CONCEPTS ALGORITHMIQUES DE BASE


#Exercice 1: ----
V1<-vector(mode = "numeric",length = 100) #je crée un vecteur
V1<-sample(-10:10,100,replace=TRUE) #je lui affecte 100 valeurs entre -10 et 10

  #j'initialise mes parametres:
set.seed(1)
nbinf<-0
nbsup<-0
t<-0

  #ma boucle pour stocker dans nb inf et nbsup le nombre de valeur inferieur et superieur dans les variables definies pour.
for (t in 1:100){
  if(V1[t]<0){nbinf<-nbinf+1 # si V1(t) est inferieur à 0 alors on l'ajoute dans nbinf (i.e on fait +1 dans nb de valeur inferieur)
  }
  else if (V1[t]>=0)
  {nbsup<-nbsup+1 # signifie que si V1(t) est supérieur ou égale à 0 alors on l'ajoute dans nbsup (i.e on fait +1 dans nb de valeur supérieur)
  }
}

nbsup #j'affiche le nombre de valeur supérieur ou égale a 0
nbinf # j'affiche le nombre de valeur strictement inferieur à 0

  #boucle qui va nous permettre d'avoir le vecteur représentatif de nbr de valeurs positives et negatives
t <- 0
for (t in 1:100) {
  if(V1[t] < 0) {V1[t] <- 0
  }
  else if (V1[t] >= 0) 
  {V1[t] <- 1
  }
}
V1 #j'affiche mon vecteur et pour toutes les valeurs positives on voit un 1 et pour toutes les negatives on voit un 0

#exercice 2:----
V2<-vector(mode = "numeric",length = 10)
V2<-seq(0.5,5,by=0.5) # valeur min = 0,5 ; valeur max = 5 et on veut un pas de 0,5
V2 #j'affiche le vecteur V2

#exercice 3:----
M1<-matrix(data=0,nrow=10,ncol=10)
M1<-matrix(data=diag(10),nrow=10,ncol=10) #je diagonalise ma matrice
M1 # j'affiche la matrice

#exercice 4:----
M2<-matrix(data=sample(100),nrow=100,ncol=100) #je définis ma variable M2 en tant que matrice de dimension 100*100
M2[upper.tri(M2)]<-0 #je transforme ma matrice en mettant que des 0 au dessus de la diagonale. cela me donne ma matrice triangulaire inférieure
M2 #j'affiche la matrice triangulaire inf

#exercice 5: ----
VP <- vector(mode= "numeric",length = 500,) #je l'associe à un vecteur
VP<- rpois(500,3) #j'associe a VP un tirage aléatoire d'une loi de poisson: on tire 500 fois et on a une loi de poisson de parametre 3
VP #j'affiche VP


hist(VP) # l'histogramme de VP

#exercise 6:----
y<-dpois(2,3) # probabilité de la loi de poisson de paramêtre 3
quantile <-qpois(y,3) # quantile 
  #affichage des valeurs
y
quantile


#exercice 7:----

k<-10 # j'initialise k comme la factorielle: ici on cherche 10!
y <-1 #j'initialise y comme la y-ième etape du calcul
while (k>1){
  y<-y*k # j'affecte à y la valeur y*k
  k<-k-1
}

y # j'affiche la valeur de 10!

#exercice 8:----
k<-10
y<-1
  #creation de la fonction factorielle
facto <- function(k){
 
  while(k>1){
    y<-y*k
    k<-k-1
  }
  y #j'affiche le resultat de la factorielle
}

facto(10) # je verifie que ma fonction fonctionne


#exercice 9:----
#exercice 10:----

fonctionPrem <- function(x){ 
  if (x<2) return ( FALSE ) # 0 et 1 ne sont pas des nombres premiers c'est pour cela qu'on va commencer par 2.
  d <- 2 #le premier diviseur différent de 0 et 1
  while (d < x){
    if (x%%d == 0) return ( FALSE ) 
    d <- d + 1
  }
  return ( TRUE )
}
#tant que le diviseur est inferieur à x, si x divisé par le dernier diviseur est = à 0 alors ce n'est pas un nombre premier.

fonctionPrem(6) # je verifie que ma fonction fonctionne. le resultat nous affiche false. en effet, 6 n'est pas un nombre premier.

#Remarque: %% = modulo; l'operation qui calcule le reste de la division




###CORRECTION EXERCICES

#EXERCICE 1:----
  #J'initialise V1
vect_V1<-vector(mode="numeric",length = 100)
vect_V1<-sample(-10,10,100,replace=TRUE)

  #je modifie le vecteur
vect_V1[vect_V1>=0]<-1
vect_V1[vect_V1<0]<-0

#EXERCICE 2:----
  #Initialisation
vect_V2<-vector(mode = "numeric",length = 10)
vect_V2<-seq(0.5,5,by=0.5)

#EXERCICE 3:----
Matrice_M1<-matrix(0,10,10)
for (compteur_diag in 1:10){
  Matrice_M1[compteur_diag,compteur_diag]<-1 #je prend le compteur et le compteur car j'ai une matrice carré.i.e ligne 1 colonne 1 = 1; ligne 2 colonne 2 = 1 ect....
}

Matrice_M1

#EXERCICE 4:----
Matrice_M2<-matrix(data=sample(1:10,replace=TRUE),100,100)
Matrice_M2[upper.tri(Matrice_M2)]<-0

#EXERCICE 5:----
set.seed(1) #suite de nombre aleatoire toujours la même
vectV3<-rpois(500,3)
plot(vectV3)

#EXERCICE 6:----
quantile_poisson <-qpois(0.5,3)
mediane_V3<-quantile(vectV3,0.5)
if (quantile_poisson==mediane_V3){
  results<-"OK"
  }else{
    results<-"pas OK"
    }

#EXERCICE7:----
num<-1 #initialisation
for(compteur in 1:10){
  num<-num*compteur
}


#EXERCICE 8:----
function_fact<-function(x){
  num<-1
  for(compteur in 1:x){
    num<-num*compteur
  }
  return(num)
}
function_fact(10)

#EXERCICE 9:----
function_min<-function(vect){
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

#EXERCICE 10:----
prim<-function(x){
  count<-0
  for(i in 1:x){
    if(x%%i ==0){
      count<-count+1
    }
  }
  if(count==2){prim=TRUE}else {prim=FALSE}
  return(prim)
}







