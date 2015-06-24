clear all;
clc;
funcprot(0);

//given data
H_b = 5.0;//average bladeaspect ratio for the stage
t_c = 0.2;//max. blade thickness to chord ratio
Re = 1*10^5;//average Reynolds number
cx = 200;//in m/s
cy2 = 552;//in m/s
U = 500;//in m/s
c2 = 588;//in m/s
delW = 276;//in kJ
c3 = 200;//in m/s
Cp = 1.148;//in kJ/(kgC)
T2 = 973;//in K
T01 = 1123;//in K
alpha1 = 0;//in deg
alpha2 = 70;//in deg

//calculations
eps = alpha1 + alpha2;//in deg
zetaN = 0.04*(1 + 1.5*(eps/100)^2);
zetaN1 = (1+zetaN)*(0.993 + 0.021/H_b) - 1;
beta2 = (180/%pi)*atan((cy2-U)/cx);
beta3 = (180/%pi)*atan(U/cx);
epsR = beta2 + beta3;
zetaR = 0.04*(1 + 1.5*(epsR/100)^2);
zetaR1 = (1+zetaR)*(0.975 + 0.075/H_b) - 1;
w3_U = sqrt(1+(cx/U)^2);
eff_ts = 1/(1 + (zetaR1*w3_U + zetaN1*((c2/U)^2) + (cx/U)^2)/(2*cy2/U));
T3 = T01 - (delW*1000 + 0.5*c3^2)/(Cp*1000);
eff_ts1 = 1/(1 + (zetaR1*(w3_U)^2 + (T3/T2)*zetaN1*((c2/U)^2) + (cx/U)^2)/(2*cy2/U));

//Results
printf('The total-to static efficiency = %.3f.',eff_ts);
printf('\n The result is very close to the value assumed in first example.')
printf('\n The total-to-static efficiency after including the temperature ratio in the equation = %.3f.',eff_ts1);

//there are small errors in the answers given in the book
