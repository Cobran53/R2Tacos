#TP5
#ex 1 ----
#mettre le meme poids pour chaque indicateur = la moyenne de chaque valeur (somme des Vtk divise par 1/k )
#nb de colonnes et faire la moyenne de chaque ligne marche aussi 

IC<-function (mat) {
  vect_res<-vector(mode="numeric",length=nrow(mat))
  nb_lignes<-nrow(mat)
  nb_col<-ncol(mat)
  for (k in 1:nb_lignes) {
    for (t in 1:nb_col) {
     vect_res[i]<-vect_res[i]+mat[k,t]
    }
  }
  vect_res<-(1/nb_lignes)*vect_res
}
  
#exercice 2 ----
n<-100
k<-5
mat_2<-matrix(data = NA, nrow=n, ncol=k,byrow = FALSE, dimnames = NULL)
set.seed(123)
for (i in 1:k) {
    mat_2[,i]<-rnorm(n,0,1)
  }
head(mat_2)
#on ne fait qu'une seule boucle car n lignes donc rnorm(n) remplit la ligne entiere on cherche à se deplacer en colonne
results_V1<-IC(mat_2)
results_V2<-IC(mat_2[,1:3])
results_V3<-IC(mat_2[,4:5])
mat_ex2<-matrix(0,100,2)
mat_ex2<-c(results_V2,results_V3) #on agrege les 2 sous indicateurs ensemble
head(mat_ex2)

