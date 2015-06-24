//clear//
clear;
clc;

//Example 6.2
//Given
Tr = 1000; //[R] 
pr = 20; //[atm]
Ma_a = 0.05;
gama = 1.4;
gc = 32.174; //[ft-lb/lbf-s^2]
M = 29;
R = 1545;
//(a)
//Using Eq.(6.45)
A = 2*(1+((gama-1)/2)*Ma_a^2)/((gama+1)*Ma_a^2);
fLmax_rh = (1/Ma_a^2-1-(gama+1)*log(A)/2)/gama  

//(b)
//Using Eq.(6.28), the pressure at the end of the isentropic nozzle pa
A = (1+(gama-1)*(Ma_a^2)/2); 
pa = pr/(A^(gama/(gama-1)))  // [atm]
//From Example 6.1, the density of air at 20atm and 1000R is 0.795 lb/ft^3
//Using Eq.(6.17), the acoustic velocity 
Aa  = sqrt(gc*gama*Tr*R/M) //[m/s]
//The velocity at the entrance of the pipe 
ua  = Ma_a*Aa //[m/s]
//When L_b = L_max, the gas leaves the pipe at the asterisk conditions, where 
Ma_b = 1;
// Using Eq.(6.43)
A = (gama-1)/2;
Tstar = Tr *(1+A*Ma_a^2)/(1+A*Ma_b^2) // [K]
// Using Eq.(6.44)
rho_star = 0.795*Ma_a/sqrt(2*(1+(gama-1)*Ma_a^2/2)/(2.4)) //[lb/ft^3]
//Using Eq.(6.39)
pstar = p0*Ma_a/sqrt(1.2) // [atm]
//Mass velocity through the entire pipe
G = 0.795*ua //[lb/ft^2-s]
ustar = G/rho_star //[ft/s]

//(c)
//Using Eq.(6.45) with f_Lmax_rh = 400

err = 1;
eps = 10^-3;
Ma_ac = rand(1,1);
i =1;
while((err>eps))  
  A = 2*(1+((gama-1)/2)*Ma_ac^2)/((gama+1)*Ma_ac^2);
  B = gama*400+1+(gama+1)*log(A)/2;
  Ma_anew  = sqrt(1/B);
  err = Ma_ac-Ma_anew;
  Ma_ac = Ma_anew;
end
Ma_ac;
uac  = Ma_ac*ua/Ma_a //[ft/s]
Gc = uac*0.795 //[lb/ft^2-s]
