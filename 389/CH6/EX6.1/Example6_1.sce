clear;
clc;

// Illustration 6.1
// Page: 145

printf('Illustration 6.1 - Page: 145\n\n');

// solution

//****Data****//
// w = Gas flow rate per orifice
w = 0.055/50;// [kg/s]
L = 8*10^(-4);// [liquid flow rate, cubic m/s]
d = 0.003;// [diameter of the orifice,m]
viscocity_gas = 1.8*10^(-5);// [kg/m.s]
//******//

Re = 4*w/(%pi*d*viscocity_gas);
Dp = 0.0071*Re^(-0.05);// [m]
h = 3;// [height of vessel,m]
P_atm = 101.3;// [kN/square m]
Density_water = 1000;// [kg/cubic m]
g = 9.81;// [m/s^2]
Temp = 273+25;// [K]
P_orifice = P_atm+(h*Density_water*g/1000);// [kN/square m]
P_avg = P_atm+((h/2)*Density_water*g/1000);// [kN/square m]
Density_gas = (29/22.41)*(273/Temp)*(P_avg/P_atm);// [kg/cubic m]
D = 1;// [dia of vessel,m]
Area = (%pi*D^2)/4;// [square m]
Vg = 0.055/(Area*Density_gas);// [m/s]
Vl = L/Area;// [m/s]
sigma = 0.072;// [N/m]
// From fig. 6.2 (Pg 143)
abscissa = 0.0516;// [m/s]
Vg_by_Vs = 0.11;
Vs = Vg/Vg_by_Vs;// [m/s]
deff('[y] = f6(shi_g)','y = Vs-(Vg/shi_g)+(Vl/(1-shi_g))');
shi_g = fsolve(0.5,f6);
dp = ((Dp^3)*(P_orifice/P_avg))^(1/3);// [bubble diameter,m]
// From eqn. 6.9
a = 6*shi_g/dp;// [specific interfacial area,square m]
printf("The Specific Interfacial Area is %f square m/cubic m\n",a);

// For diffsion of Cl2 in H20
Dl = 1.44*10^(-9);// [square m/s]
viscocity_water = 8.937*10^(-4);// [kg/m.s]
Reg = dp*Vs*Density_water/viscocity_water;
Scl = viscocity_water/(Density_water*Dl);
// From Eqn.6.11
Shl = 2+(0.0187*(Reg^0.779)*(Scl^0.546)*(dp*(g^(1/3))/(Dl^(2/3)))^0.116);
// For dilute soln. of Cl2 in H20
c = 1000/18.02;// [kmol/cubic m]
Fl = (c*Dl*Shl)/dp;// [kmol/square m.s]
printf("Mass Transfer coeffecient is %f kmol/square m.s\n",Fl);