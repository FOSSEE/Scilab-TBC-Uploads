//clear//
clear;
clc;

//Example 15.1
//Given
Ds = 35/12; //[ft]
Do = 0.75/12; //[ft]
p = 1/12; //[ft]
P = 1; //[ft]
mdot = 10^5; //[lb/h]
mu_60 = 0.70; //[cP], at 60 [F], from Appendix 9
mu_140 = 0.38; //[cP], at 140 [F], from Appendix 9
Cp = 0.41; //[Btu/lb-F], from Appendix 16
k = 0.092; //[Btu/ft-h-F], from Appendix 13

//Shell side coefficient is found using Donohue Eq.(15.4)
//From Eq.(15.2), the area for crossflow is
Sc = 2.9167*P*(P-Do/p); //[ft^2]
//The number of tubes in the baffle window is approximately equal to the fractional 
//area of the window f times the total nmber of tubes. For a 25 percent baffle
f = 0.1955
Nb = f*828; 
//Nb~161
Nb = 161;
//Using Eq.(15.1), area of the baffle window
Sb = (f*%pi*Ds^2/4)-(Nb*%pi*Do^2/4); //[ft^2]
//Using Eq.(15.3), the mass velocities are
Gc = mdot/Sc; //[lb/ft^2-h]
Gb = mdot/Sb; //[lb/ft^2-h]
Ge = sqrt(Gc*Gb); //[lb/ft^2-h]
//Using Eq.(15.4)
ho = k/Do*(0.2*(Do*Ge/(mu_60*2.42))^0.6*(Cp*mu_60*2.42/k)^0.33*(mu_60/mu_140)^0.14);//[Btu/ft^2-h-F]
disp('Btu/ft^2-h-F',ho,'The individual heat transfer coefficent of benzene is')
