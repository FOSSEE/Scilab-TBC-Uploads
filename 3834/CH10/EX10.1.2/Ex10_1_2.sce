//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.1.2
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given
T=300;//temperature in K
kB=1.38E-23;//Boltzman constant in J/K
E=kB*T;
e=1.6E-19;//Electrons value in Coulomb
Vd=0.7;;//depletion voltage in V
Y=e*Vd/E;
nnbynp=exp(Y);//Ratio of majority to minority charge carriers in an n type and a p type of silicon semiconductor
mprintf("Ratio of majority to minority charge carriers in an n type and a p type of silicon semiconductor = %.2f x10^11",nnbynp/1e11);//the answer vary due to rounding
