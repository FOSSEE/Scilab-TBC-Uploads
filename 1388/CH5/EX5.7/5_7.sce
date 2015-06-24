clc
//initialisation of variables
Ph= 643 //mm of Hg
Mh= 18 //gms
Po= 117 //mm of Hg
Mo= 157 //gms
//CALCULATIONS
r= Ph*Mh/(Po*Mo)
P= 100*(1/(1+r))
//RESULTS
printf (' percentage = %.1f percent',P)
