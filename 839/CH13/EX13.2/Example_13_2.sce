//clear//
clear;
clc;

//Example 13.2
//Given
P = 2; //[atm]

//(a)
//From Fig. 13.7
//Critical pressure of benzene
Pc = 47.7; //[atm]
PbyPc = P/Pc;
//From Fig. 13.7 the ordinate (q/A)max/Pc is about 190, and
qbyA_max = 190*Pc*14.696; //[Btu/h-ft^2]
disp('Btu/h-ft^2',qbyA_max,'The maximum heat flux is')
//Also from Fig. 13,7
delta_Tc = 62; //[F]
disp('F',delta_Tc,'The critical temperature difference is')
// film coefficient
h = qbyA_max/delta_Tc; //[Btu/h-ft^2-F]
disp('Btu/h-ft^2-F',h,'The film coefficient is')

//(b)
//Given
P = 0.2; //[atm]
PbyPc = P/Pc; 
//Using Eq.(13.20)
//noting that lambda, sigma and rho_L are nearly constant and rho_L>rho_V
// qbyA_max~rho_V^(1/2)~P^(1/2)
qbyA_max = qbyA_max*(0.2/2)^(1/2); //[Btu/h-ft^2]
disp('Btu/h-ft^2',qbyA_max,'The maximum heat flux is')
//The critical temperature difference would be greater than 100 [F] and
//the film coefficient would be less than 410 [Btu/h-ft^2-F]  
