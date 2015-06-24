//Chemical Engineering Thermodynamics
//Chapter 12
//Refrigeration

//Example 12.1
clear;
clc;

//Given
m = 500;//mass of ice produced per hour  in Kg
T1 = 15;//Initial temperature of water
T2 = -5;//Final temperature of ice
Ci = 0.5;//Specific  heat of ice in Kcal/Kg deg celsius
Cw = 1;//Specific heat of water in Kcal/Kg deg celsius
L_f = 79.71;//Latent heat of fusion in Kcal/Kg
Tf = 0;//Frezzing point of ice in deg celsius

//To Calculate the theoretical horse power required
Q2 = m*(Cw*(T1-Tf)+L_f+Ci*(Tf-T2));//Heat to be extracted per hour in Kcal
//From equation 12.1 (page no 220)
C.O.P = (T2+273)/((T1+273)-(T2+273));
W = Q2/C.O.P;//Work in Kcal/hr
W1 = W*(427/(60*4500));
mprintf('The therotical horse power required is %f hp',W1);
//end