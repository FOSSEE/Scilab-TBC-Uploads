clear
clc
//to find speed of electron as fraction of c and as difference from c


//Given:
//kinetic energy of electron
K = 50//in GeV
//value of mc_square
mc_square = 0.511e-3//in GeV
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying fomule for relativistic energy
//speed of electron as fraction of c
v = sqrt(1-(1/(1+(K/mc_square)^2)))//times c
//speed of electron as difference from c
c_minus_v = (5.2e-11)*c//in m/s

printf ("\n\n Speed of electron as fraction of c v = \n\n %.12fc" ,v);
printf ("\n\n Speed of electron as difference from c c_minus_v = \n\n %.3f m/s" ,c_minus_v);
