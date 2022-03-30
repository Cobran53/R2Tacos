#EXERCICES DU TD.3: 
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


  #EXERCICE 4: methode sup inf

sup_inf<-function(vect4){
  
  for (compteur in 1:length(vect4)) 
    if (w[compteur]<(1+p)){
      vect[compteur]<-1
    }
  else if (w[compteur]>=(1-p)&&w[compteur]<=(1+p){
    vect[compteur]<-0
  }
  else{
    vect[compteur]<-(-1)
  }
}

#CORRECTION EXERCICE 4:

function_4<-function(vect4,p){
  vect_result<-vector(mode = "numeric",n=length(vect4)) #initialisation vecteur
  for (compteur in 1:length(vect4)){
    if (vect4[compteur]<(1-p)){
      vect_result[compteur]<-(-1)
    } else if (vect4[compteur] >= (1+p)){
    vect_result[compteur]<-1
    }else{
      vect_result[compteur]<-0
    }
      return(vect_result)
    }
}



###EXERCICES COVARIANCE ET CORRELATION:

  #EXERCICE 1: FONCTION COVARIANCE
covxy<-vector(mode="numeric")
x<-vector(mode="numeric")
y<-vector(mode="numeric")
fun_cov <- function(x,y)
  for (compteur in 1: length(x){
    covxy<-0 #initialisation de la cov
    covxy =  sum((x[compteur]-mean(x))*(y[compteur]-mean(y)))/length(x-1) #application de la formule du cours
  }
return(covxy)

  #EXERCICE 2: FONCTION CORRELATION:
x<-vector(mode="numeric")
y<-vector(mode="numeric")
fun_corr<-function(x,y){
  corr<-0 #initialisation du coef de correlation
  corr<-cov(x,y)/(sd(x)*sd(y)) # application de la formule du cours
  return(corr)
}
fun_corr(x,y)


  
