clc 
//initialisation of variables
R= 1.987 //cal mole^-1 K^-1
T= 0 //C
M= 18.02 //gms
Hf= 79.7 //cal g^-1
//CALCULATIONS
Kf= R*(273.1+T)^2*M/(1000*M*Hf)
//RESULTS
printf ('Kf of water= %.2f deg molal^-1',Kf)
