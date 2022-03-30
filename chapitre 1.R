### utilisation de la fonction class pour determiner le type de variable----
a<- "bonjour"
class(a)

b<- TRUE
class(b)

c<-pi
class(c)

### création de vecteur----
v_vector <- vector(mode = "numeric",length = 10)
v_vector <- c(1,2,3,4,5,6,7,8,9,10) 'on peut aussi ecrire v_vector <- seq(1,10)'
print(v_vector) 'afficher le vecteur'
length(v_vector) 'pour determiner la taille du vecteur'

v_vector_2<-vector(mode = "numeric",length = 10)
v_vector_2 <- rep(3,10) 'vecteur composé de dix 3'

v_vector_3<-vector(mode = "numeric",length = 10)
v_vector_3<-seq(10,1) 'vecteur de taille 10 composé de 1,2,3,...,10'
v_vector_3[2:5] #afficher seulement les éléments de 2 à 5

v_vector_4<-vector(mode = "numeric",length = 10)
v_vector_4 <- sample(1:10,10) 'pour faire un tirage au sort entre 1 et 10 de 10 éléments'

v_vector_5<-vector(mode = "numeric",length = 10)
v_vector_5 <- sample(1:10,10,replace=TRUE) 'replace = true => tirage au sort avec remise'

v_booleen <- logical(length=3)
v_booleen <-c(TRUE,FALSE,TRUE)

set.seed(1) 'pour avoir toujours le même tirage; à mettre avant la fonction sample; utile pour le projet et avoir le même tirage'

v_vector_6<-vector(mode = "numeric",length = 10)
v_vector_6<-sample(5:30,10,replace=TRUE)
### LES FONCTIONS QU'ON PEUT UTILISER:
max(v_vector_6) 'on utilise aussi min, mean,sum'

###LES MATRICES: seule difference avec les vecteurs est qu'il y a deux dim----
m_1<-matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol = 3)  'nrow= nb de ligne de la matrice et ncol=nbr de colonne'
print(m_1)
length(m_matrix1) 'nous donnera 6'

#la transposée de la matrice
t(m_1)

#matrice inverse, fonction que pour les matrices carrés
m_2<-matrix(data = diag(3), nrow = 3, ncol = 3) 'diag(3)= la matrice diago de taille 3'
solve(m_2)

###liste et dataframe----
' vecteur avec tous les element du même type est appele un vecteur atomique,
mais un vecteur avec des éléments de tupes différents est appelé une liste
un dataframe est une structure de données bidimensionnelle dans R -> c est un cas particulier de liste dans laquelle chaque élément a la meme longueur mais ou les elements peuvent etre de type differents.'

#LISTE
list_1<-list("a"=3.14,"b"=TRUE,"c"=1:10,"d"=20/10/2019)
print(list_1)

#DATAFRAME
DF_1<-data.frame("a"=1:12,"b"=c(21,12),"c"=d(m_1,m_2))
'a revoir'


###LA CONDITION IF----
#exemple 1: savoir si le nombre aléatoire est pair ou impair
random<-sample(1:10,1)
if(random%%2==0){
  results<-"pair"
}else{
    results<-"impair"
}

#exemple 2: fonctionnement de if else if
random2<-sample(1:150,1)
if(random2>=1 && random2 <50){
  results<-"petit"
}else if(random2>=50 && random2<100){
  results<-"moyen"
}else{
  results<-"grand"
}

###LA BOUCLE FOR ET LA BOUCLE WHILE----
#for: permet de repeter l execution
#a reprendre

#boucle for:
set.seed(1)
n<-100
sum_tirage<-0
for(compteur_tirage in 1:n){
  valeur_tirage<-sample(1:100,1)
  sum_tirage<- sum_tirage + valeur_tirage
}
#boucle for avec un vecteur
set.seed(1)
n<-100
vector_tirage<-vector(mode="numeric",length = 100)
for(compteur_tirage in 1:n){
  vector_tirage[compteur_tirage]<-sample(1:100,1)
}

sum(vector_tirage)
plot(vector_tirage) #nuage de point
hist(vector_tirage) #histogramme'

#boucle while
#la boucle while intègre une condition qui contraint le programme a continuer des iterations jusqu a ce que cette condition soit respectée
set.seed(1)
compteur_tirage<-1 #initialisation du compteur
vecteur_tirage<-0
nb_tirage<-100
vecteur_tirage<-as.vector(rep(0,nb_tirage))
vecteur_tirage[100]<-1

while (vecteur_tirage[compteur_tirage]==0){
  vecteur_tirage[compteur_tirage]<-sample(1:100,1)
  compteur_tirage<-compteur_tirage+1
} 


###LES FONCTIONS----
#la fonction max pour un vecteur: on parle de fonction coeur (cette fonction pourrait être codée)
#exemple de fonction:
convert_temperature<-function(temp=temperature){
  degre<-((temp-32)*(5/9))+273.15
  return(degre)
} #convertir des fahrenheit en degrés

convert_temperature(32)



###EXERCICES----
#Exercice 1:
V1<-vector(mode = "numeric",length = 100)
V1<-sample(-10:10,100,replace=TRUE)


#exercice 2:
V2<-vector(mode = "numeric",length = 10)
V2<-seq(0.5,5,by=0.5)

#exercice 3:
M1<-matrix(data=0,nrow=10,ncol=10)
M1<-matrix(data=diag(10),nrow=10,ncol=10)

#exercice 4:
M2<-matrix(data=sample(100))

