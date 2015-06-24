clear;
clc;

// Illustration 13.1
// Page: 722

printf('Illustration 13.1 - Page: 722\n\n');

// Solution 

//***Data***//
Density_L = 1137;// [kg/cubic m]
Density_S = 960;// [kg/cubic m]
Density_p = 1762;// [kg/cubic m]
A_prime = 16.4;// [square m/kg]
g = 9.81;// [square m/s]
sigma = 0.066;// [N/m]
Z = 3;// [m]
dia = 1;// [m]
//**********//

e = 1-(Density_S/Density_p);// [fraction void]
ap = A_prime*Density_S;// [square m/cubic m]
// By Eqn. 6.67:
dp = 6*(1-e)/ap;// [m]
// By Eqn. 13.6:
K = dp^2*e^3*g/(150*(1-e)^2);// [cubic m/s]
check = K*Density_L*g/(g*sigma);
if check<0.02
    // By Eqn. 13.3: 
    So = 0.075;
else
    // By Eqn. 13.4:
    So = 0.0018/(check)
end
// By Eqn. 13.2:
ZD = (0.275/g)/((K/g)^0.5*(Density_L/sigma));// [m]
// By Eqn. 13.1:
Sav = ((Z-ZD)*So/Z)+(ZD/Z);
// VolRatio=Vol liquid retained/Vol bed.
VolRatio = Sav*e;
printf("Vol liquid retained/Vol bed : %f cubic m/cubic m\n",VolRatio);
Mass = VolRatio*%pi*dia^2*Z*Density_L/4;// [kg]
// Mass ratio=Mass Liquid/Mass dry solid
MassRatio = VolRatio*Density_L/(Density_S);
printf("Mass liquid/Mass dry solid: %f kg/kg\n",MassRatio);