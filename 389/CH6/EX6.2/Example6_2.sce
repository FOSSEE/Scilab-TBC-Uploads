clear;
clc;

// Illustration 6.2
// Page: 157

printf('Illustration 6.2 - Page: 157\n\n');

// solution

//****Data****//
// a = N2 b = H2O
L = 9.5*10^(-4);// [cubic m/s]
G = 0.061;// [kg/s]
Temp = 273+25;// [K]
//*****//

printf("Construction Arrangement\n");
printf("Use 4 vertical wall baffles, 100 mm wide at 90 degree intervals.\n");
printf("Use a 305 mm dameter, a six bladed disk flat blade turbine impeller, arranged axially, 300 mm from the bottom of vessel\n");
printf("The sparger underneath the impeller will be in the form of a 240 mm dameter ring made of 12.7 mm tubing drilled in the top with 3.18 mm dia holes\n");
Di = 0.305;// [m]
Do = 0.00316;// [m]
viscocity_a = 1.8*10^(-5);// [kg/m.s]
Re_g = 35000;
Ma = 28.02;// [kg/kmol]
Mb = 18.02;// [kg/kmol]
// w = Gas flow rate per orifice
w = Re_g*%pi*Do*viscocity_a/4;// [kg/s]
N_holes = G/w;
Interval = %pi*240/round(N_holes);
printf("The number of holes is %d at approx %d mm interval around the sparger ring\n",round(N_holes),round(Interval));

viscocity_b = 8.9*10^(-4);// [kg/m.s]
Sigma = 0.072;// [N/m]
Density_b = 1000;// [kg/cubic m]
D = 1;// [dia of vessel,m]
g = 9.81;// [m/s^2]
// From Eqn. 6.18
deff('[y] = f7(N)','y = (N*Di/(Sigma*g/Density_b)^0.25)-1.22-(1.25*D/Di)');
N_min = fsolve(2,f7);// [r/s]
N = 5;// [r/s]
Re_l = ((Di^2)*N*Density_b/viscocity_b);
// From fig 6.5 (Pg 152)
Po = 5;
P = Po*Density_b*(N^3)*(Di^5);
h = 0.7;// [m]
P_atm = 101.33;// [kN/square m]
P_gas = P_atm+(h*Density_b*g/1000);// [kN/square m]
Qg = (G/Ma)*22.41*(Temp/273)*(P_atm/P_gas);// [cubic m/s]
// From Fig.6.7 (Pg 155)
abcissa = Qg/(N*(Di^3));
// abcissa is off scale
Pg_by_P = 0.43;
Pg = 0.43*P;// [W]
Vg = Qg/(%pi*(D^2)/4);// [superficial gas velocity,m/s]
check_value = (Re_l^0.7)*((N*Di/Vg)^0.3);
vl = %pi*(D^2)/4;// [cubic m]
// Since value<30000
// From Eqn. 6.21, Eqn.6.23 & Eqn. 6.24
K = 2.25;
m = 0.4;
Vt = 0.250;// [m/s]
shi = 1;
err = 1;
while (err>10^(-3))
    a = 1.44*((Pg/vl)^0.4)*((Density_b/(Sigma^3))^0.2)*((Vg/Vt)^0.5);// [square m/cubic m]
    shin = (0.24*K*((viscocity_a/viscocity_b)^0.25)*((Vg/Vt)^0.5))^(1/(1-m));
    Dp = K*((vl/Pg)^0.4)*((Sigma^3/Density_b)^0.2)*(shin^m)*((viscocity_a/viscocity_b)^0.25);// [m]
    err = abs(shi-shin);
    Vt = Vt-0.002;// [m/s]
    shi = shin;
end

// For N2 in H2
Dl = 1.9*10^(-9);// [square m/s]
Ra = 1.514*10^(6);
// By Eqn. 6.25
Shl = 2.0+(0.31*(Ra^(1/3)));
// For dilute soln.
c = 1000/Mb;// [kmol/cubic m]
Fl = Shl*c*Dl/Dp;// [kmol/square m.s]
printf("The average gas-bubble diameter is %e m\n",Dp);
printf("Gas Holdup:%f\n",shi);
printf("Interfacial area:%e square m/cubic m \n",a);
printf("Mass transfer coeffecient:%e kmol/square m.s\n",Fl);