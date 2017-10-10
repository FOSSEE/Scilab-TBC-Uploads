// Example 12_2
clc;funcprot(0);
// Given data
X_N_2=78.09;// %
X_O_2=20.95;// %
X_Ar=0.930;// %
X_CO_2=0.0300;// %
R=8.3143;// kJ/(kg.mole.K)

// Calculation
// (a)
M_N_2=28.02;// kg/kgmole
M_O_2=32.00;// kg/kgmole
M_Ar=39.94;// kg/kgmole
M_CO_2=44.01;// kg/kgmole
M_air=((X_N_2/100)*M_N_2)+((X_O_2/100)*M_O_2)+((X_Ar/100)*M_Ar)+((X_CO_2/100)*M_CO_2);// kg/kgmole
// (b)
R_air=R/M_air;// kJ/kg.K
// (c)
// Equation (12.13) can be used to determine the corresponding mass or weight fraction composition as
w_N_2=(X_N_2/100)*(M_N_2/M_air)*100;// % by mass
w_O_2=(X_O_2/100)*(M_O_2/M_air)*100;// % by mass
w_Ar=(X_Ar/100)*(M_Ar/M_air)*100;// % by mass
w_CO_2=(X_CO_2/100)*(M_CO_2/M_air)*100;// % by mass
printf("\n(a)The equivalent molecular mass,M_air=%2.2f kg/kgmole \n(b)The gas constant for the mixture,R_air=%0.3f kJ \n(c)The composition of air on a mass (or weight) basis,w_N2=%2.2f percentage by mass \n                                                      w_O2=%2.2f percentage by mass \n                                                      w_Ar=%1.2f percentage by mass \n                                                      w_CO2=%0.4f percentage by mass",M_air,R_air,w_N_2,w_O_2,w_Ar,w_CO_2);
