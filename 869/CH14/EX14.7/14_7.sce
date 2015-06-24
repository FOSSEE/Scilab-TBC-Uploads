clc
//initialisation of variables
As= 1 //in^2
Zs= 0.167 //in^3
Ah= 1 //in^2
Zh= 0.984 //in^3
es= 0.5 //in
eh= 0.5 //in
//CALCULATIONS
phbyps= (1/As+es/Zs)/(1/Ah+eh/Zh)
//RESULTS
printf ('ratio= %.1f',phbyps)
