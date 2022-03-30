#chapitre 5:
#analyse en composante principale(ACP)
-> chaque vecteur contient de l'info. '
obj:visualiser les info d'un ens de données contenant des indicidus/observation...
'
ACP permet de recuperer l'info essentiel-> regle le pb de correlation...
ACP = combinaison linéaire des différentes variables.
on projette l'ens des données sur un hyperplan et on recupere les nouveaux vecteurs directeurs qui correspondent a ces variables princiapels (reduction de dimensions)
permet une meilleur visibilite de nos données avec le pb de correlation resolu et reduire les dimensions...

Pb acp: il y a une sorte d'opacité

#covariance permet de calculer la correlation:
Cov(x,y)= (1/N)*somme des (xi-moy(x))*(yi-moy(y))
-> variation simultanée de x et y

# correlation est comprise entre -1 et 1.
-> correlation positive ou negative 
-> correlation en sens oppose => correlation = -1
-> correlation dans meme sens => correlation = 1
-> pas de correlation => correlation = 0

correlation est un lien dit statistique: completement indep de la causalite. Pas pcq il y a une correlation qu'il existe une causalité entre les deux variable.
"spurious correlations -> regarder sur internet pour des exemples variable correle alors qu'il existe pas de causalité"

correlation de pearson : correlation(x,y): cor= (cov(x,y))/sigma x * sigma y
correlation de spearman: cor = cov(rangX,rangY)/sigma(rang X)*sigma(rang Y)


cor(X1,X2,method = "spearman")
corplot





