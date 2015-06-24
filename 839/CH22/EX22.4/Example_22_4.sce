//clear//
clear;
clc;

//Example 22.4
//Given
ieee();
H = 0.0075; //[TCE]
T = 20; //[C]
P = 1; //[atm]
wa = 6*10^-6; //[g]
Ca = 6; //[ppm]
wb = 4.5*10^-9 //[g]
M = 18;

//Solution
m = H/P*10^6/M;
//With this large value of m, the desorption is liquid-phase controlled.
//At the minimum air rate, the exit gas will be in equilibrium with the
//incoming solution.
MTCE = 131.4;
j = 1.5;
for i = 1:7
xa = wa/MTCE*M; 
ya = m*xa;
//Per cubic meter of solution fed, the TCE removed is
VTCE = 10^6*(wa-wb)/MTCE; //[mol]
//The total amount of gas leaving is
V = VTCE/ya; //[mol]
Fmin = V*0.0224; //[std m^3], as 1 gmol = 0.0224 std m^3
Vmin = Fmin*j;
//Density at the standard conditions,
rho = 1.259; //[kg/m^3],
//so the minimum rate on a mass basis is,
//Let A = (Gy/Gx)min
A = Vmin*rho/1000; //[kg air/kg water]
//If the air rate is 1.5 times the minimum value, then
ya = ya/j;
xastar = ya/m;
Castar = xastar*MTCE/M *10^6; //[ppm]
delta_Ca = Ca-Castar;

//At bottom
Cb = 0.0045; //[ppm]
Cbstar = 0; //[ppm] 
delta_Cb = Cb-Cbstar; //[ppm]
delta_CL = (delta_Ca-delta_Cb)/log(delta_Ca/delta_Cb); //[ppm]
Nox(i) = (Ca-Cb)/delta_CL;
j = j+0.5;
end

Hox = 3; //[ft]
Z = Hox*Nox; //[ft]
//Going from 1.5 to 2Vmin or from 2 to 3Vmin decreases the tower height
//considerably, and the reduction in pumping work for water is more than
//the additional energy needed to force air through the column. Further
//increase in V does not change Z very much, and the optimum air rate is
//probably in the range 3 to 5Vmin./
  
disp(Nox,'Number of Transfer units with minimum air rates')
