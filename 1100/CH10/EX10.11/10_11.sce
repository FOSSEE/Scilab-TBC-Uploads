clc
//initialisation of variables
h1= 1183.2 //Btu/lb
hg= 1198.4 //Btu/lb
hfg= 843.0 //Btu/lb
//CALCULATIONS
n= 1-((hg-h1)/hfg)
//RESULTS
printf ('quality= %.3f ',n)
