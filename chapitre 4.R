#chapitre 4: la normalisation des données:
def: permet de transformer un vecteur de données pour qu'elles soient comparables avec 'autres données.
qaund on a un jeu de donnée -> certaines methodes sont plusa ppropriées que d'autres.'
interessant de voir l'impact sur l'indice quand on utilise des methodes differents

methode 1: classement
-> conssite a treir par rapport au rang des données.
permet de mettre a l'echelle toutes les données'
trier par le rang permet d'avoir des données sur la meme echelle'

exemple: on a :
  xi -> rang(xi)
  3     3
  7     4
  4     2
  3     1


methode 2: standardisation/ Z score (ZC)
permet d'avoir des données centrée en 0 avec un ecart type de 1
formule: X standardisé = (Xi-moy)/sigma de X'

exemple:
  X     et moy=4
x1 2
x2 4
x3 6
x4 4
-> la boucle serait: 
  Xst = X([i]-moy)/ecart type


methode 3: min max
Xminmax = (Xi-Xmin)/(Xmax-Xmin)

FMM<-function(vect){
  minX<-min(vect)
  maxX-max(vect)
for (compteur in vector) {
  vect[compteur]<- (X[compteur]-minX)/(maxX-minX)
  }
  
}
  
methode 4: distance de reference
-> on a une valeur predeterminer et on va regarder pour chaque variable la proportion/distance k entre la valeur de ref et la variable
->permet de regarder l'evolution par rapport à un ppays conditonnelemnt a une valeur initiale cible/ un pays de ref'

on considere
i= pays/individus observé
j= pays/individus de ref
t= temps
t0: periode de ref
  Xdist = Xi,t / Xj,t0

methode 5: echelle categorielle
-> associe a chaque donnée d'une serie un score ou une valeur. on prend la fonction quantile, on regarde le quantile de la distribution et selon ou on se place on lui attribue une vealeur.
ex: du quantile 0 a 25 => on attribue la valeur 0
    du quantile 25 à 75 => 1
...'
ca peut etre aussi on attribue bon et mauvais

methode 6: inf
-> le sindicateur autour de la moyenne sont transformé en prenant la valeur 0 tandis que les valeurs sup et inf à un seuil sont associées a 1 ou -1. 
p represente le seuil
1 w>(1+p)
0 (1-p)=< w =<(1+p)
-1 w< (1+p)

avec w= xt/xt0

-> on peut faire un nuage de point.

#EXERCICE DU TD.3: 
  #EXERCICE 1: prendre en paramêtre un vecteur puis on code l'exo/ méthode de standardisation

fonction_stand<-function(vect1)
  for (compteur in 1:length(vect1)) {
    Xstand = (vect[compteur]-mean(vect1))/sd(vect1) # (premiere ligne - la moyenne)/ ecart type de x
    vectstandar[compteur]<-Xstand # on remplit la valeur que l'on vient de calculer dans un nouveau vecteuri;e la valeur standardisé. puis on refait ca pour chaque valeur.
  }
return(vectstandar)


  #EXERCICE 2: utilisation de la fonction min max
vectmm<-vector(mode="numeric")
fonction_minmax<-function(vect2)
  for(compteur in 1:length(vect2)){
    Xmm = (vect[compteur]-min(vect2))/(max(vect2)-min(vect2))
    vectmm[compteur]<-Xmm
  }
return(vectmm)

  #EXERCICE 3

ech_cat<-function(vect,q1,q2,q3,q4,q5){
  results<-as.vect(rep(0,length(vect))) #initialisation
  for (compteur in 1:length(vect)){
if (vect[compteur]<q1) {
  results[compteur]<-0
}    
else if (vect[compteur]>=q1&&vect[comtpeur]<q2) {
  results[compteur]<-20
}
else if (vect[compteur]>=q2&&vect[compteur]<q3){
  results[compteur]<-40
}  
else if (vect[compteur]>=q3&&vect[compteur]<q4){
    results[compteur]<-60
}
  else if (vect[compteur]>=q4&&vect[compteur]<q5){
    results[compteur]<-80
  }
else{
  results[compteur]<-100
}
  }
  return(results)
}


  #EXERCICE 4

sup_inf<-function(vect,p,w){

    for (compteur in 1:length(vect)) 
if (w[compteur]<(1+p)){
  vect[compteur]<-1
}
  else if (w[compteur]>=(1-p)&&w[compteur]=<(1+p){
    vect[compteur]<-0
  }
  else{
    vect[compteur]<-(-1)
  }
}















  