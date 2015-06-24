//clear//
clear;
clc;

//Example 14.1
//Given
d = 150; //[mm]
T1 = 300+272; //[K]
T3 = 25+273; //[K]
eps1 = 0.56;
eps2 = 1.0;
eps3 = eps1;
sigma = 5.672

//(a)
//Using Eq.(14.38)
//q12 = sigma*A1*F12*(T1^4-T2^4)
//q23 = sigma*A2*F23*(T2^4-T3^4)
//At equilibrium, q12=q23 
//From Eq.(14.39)
F12 = 1/(1/eps1+1/eps2-1)
F23 = F12;
//A1 = A2
T2 = (100*((T1/100)^4+(T3/100)^4)^(1/4))/2^(1/4); //[K]
disp('F',T2,'the temperature of lacquered sheet is')

//(b)
//From Eq.(14.38), heat flux 
q12byA = sigma*F12*((T1/100)^4-(T2/100)^4); //[W/m^2]
disp('W/m^2',q12byA,'the heat flux is')
