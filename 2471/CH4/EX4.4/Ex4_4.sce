clear ;
clc;
// Example 4.4
printf('Example 4.4\n\n');
printf('Page No. 93\n\n');

// given
dH = 12*10^-3;// Outer diameter of pipe in m
dC = 10*10^-3;// Inner diameter of pipe in m
L = 1*10^-3;// im m
h_H = 10*10^3;// Heat Transfer Coefficient  on vapour side in W/m^2-K
h_C = 4.5*10^3;// Heat Transfer Coefficient  on vapour side in W/m^2-K
K = 26;// Thermal Conductivity of metal in W/m-K
dM = (dH + dC)/2;// mean diameter in m
h_Hf = 6*10^3;// Fouling factor for hot side
h_Cf = 6*10^3;// Fouling factor for cold side

U = (1/h_H)+((L*dH)/(K*dM))+(dH/(dC*h_C));
Uh = (1/U);// in W/m^2-K
printf('The original heat transfer coefficient is %3.0f W/sq.m K \n',Uh )// Deviation in answer due to direct substitution

u = (1/h_H)+(1/h_Hf)+((L*dH)/(K*dM))+(dH/(dC*h_C))+(dH/(dC*h_Cf));
Uf = (1/u);// in W/m^2-K
printf('The final heat transfer coefficient due to fouling is %3.0f W/m^2-K \n',ceil(Uf))
