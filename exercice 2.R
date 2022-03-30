###EXERCICE 1----
#je definis mes données réelles:
x<-c(0,1)
y<-c(0,2)
DF<-data.frame(x,y)

plot(DF$x,DF$y,type = "o") #representation graphique
x_value<-seq(0,1,0.1) # les valeurs de x que je veux interpoler.
DFF<-approx(x,y,xout=x_value,method = "linear",ties = "ordered") #nous donne les valeurs de y associées a chaque x
abline(v=x_value,col="blue") #pour obtenir les valeurs de y où les ablines se croisent avec l'interpolation linéaire.

###EXERCICE 2----
  #je definis ma base de donnée
x-c(0,10)
y<-c(12,16)
DF2<-data.frame(x,y)

DR<-lm(y~x,data= DF2) #on cherche une relation telle que y= a + bx
print(DR)
a<-coef(DR)[1] #je definis a comme l'intercept
b<-coef(DR)[2] #je definis b comme la pente

eq=paste0("y=",round(b,2),"*x+",round(a,2))
  #representation de la droite de regression et de la relation linéaire entre x et y
plot(x,y,main = "Droite de regression",sub=eq)
abline(DR,col="red")

###EXERCICE 3----
  #fonction pour calculer la moyenne
somme=0 #initialisation
moy=function(x)
  for(i in 1:length(x)){
    somme=somme+x[i] #pour calculer la somme des xi pour i allant de 1 à N
  }
moy=somme/length(x)
# car la moyenne est egale à la somme des xi divisée par la taille de l'échantillon ici N
  
  #fonction pour calculer l'écart type:
somme=0
et<-function(x)
  for (t in 1:length(x)){
    somme=somme+(x[t]-moy)^2
  }
et=(somme/length(x))^0.5




###CORRECTION DES EXERCICES:----
  #EXERCICE 1:

f(x)=f(a)+(f(b)-f(a))(x-a)/(b-a) #formule d'interpolation linéaire.

#1ere option:
fonctioninterpol_1<-function(x,xa,xb,ya,yb){
  y<-((ya-yb)/(xa-xb))*x+((xa*yb-xb*ya)/(xa-x))
  return(y)
}

#2ème option:
fonctioninterpol_2<-function(x,xa,xb,ya,yb){
  y<-ya+(yb-ya)*(x-xa)/(xb-xa)
  return(y)
}

  #EXERCICE 2:
lm(Y~X-1) => Y=bX
lm(Y~X)=> Y=bX+a
b=(X'X)^(-1)X'Y

function_coef<-function(X,Y){
     B<-solve(t(X)%*%X)%*%t(X)%*%Y #%*% pour pouvoir faire le produit matricielle
     return(B)
   }

  #EXERCICE 3:

#fonction pour la moyenne:
moyenne<-function(vect){
  x<-sum(vect)
  y<-x/length(vect)
  return(y)
}

#fonction pour l'écart type:

ecart_type<-function(vect){
  SOS<-0 #somme des carrées
  for (i in 1:length(vect)){
    SOS<-SOS+((vect(i)-y)^2) #avec y la moyenne
    
  }
  sigma<-sqrt(SOS/length(vect))
  return(sigma)
    
}






