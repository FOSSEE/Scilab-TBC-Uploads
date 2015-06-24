clear;
clc;

// Illustration 4.3
// Page: 233

printf('Illustration 4.3 -  Page: 233\n\n');

// solution
//*****Data*****//
// a-ammonia   b-air   c-water
P = 101.3; // [kPa]
T = 293; // [K]
R = 8.314; 
Vb = 20; // [kmole/h]
xab = 0.05;
Vc = 1500; // [kg/h]
d = 0.9; // [ammonia absorbed]
Ma = 17; // [gram/mole]
Mb = 29; // [gram/mole]
Mc = 18; // [gram/mole]
g = 9.8; // [square m/s]
//*****//

// For Inlet gas
Mg = (1-xab)*Mb+xab*Ma; // [gram/mole]
V = Vb*Mg/3600; // [kg/h]
rowg = P*Mg/(R*T); // [kg/cubic m]
Qg = V/rowg; // [cubic m/s]

// For exiting liquid
b = Vb*xab*Ma*d; // [ammonia absorbed in kg/h]
L = (Vc+b)/3600; // [kg/s]
rowl = 1000; // [kg/cubic m]

X = (L/V)*(sqrt(rowg/rowl));
// From equation 4.8
Yflood = exp(-(3.5021+1.028*log(X)+0.11093*(log(X))^2));


printf('Illustration 4.3(a) - Page: 233\n\n');
// Solution(a)
// For 25-mm ceramic Raschig rings
Fp = 179; // [square ft/cubic ft]
ul = 0.001; // [Pa.s]
// From equation 4.6
Csflood = sqrt(Yflood/(ul^0.1*Fp)); // [m/s]
// From equation 4.7
vgf = Csflood/(sqrt(rowg/(rowl-rowg))); // [m/s]
// From equation 4.9
deltaPf = 93.9*(Fp)^0.7; // [Pa/m of packing]

// For operation at 70% of the flooding velocity
f = 0.7;
// From equation 4.10
vg = f*vgf; // [m/s]
D = sqrt(4*Qg/(vg*%pi));

// From Table 4.1, for 25 mm ceramic Raschig rings
a_c = 190; // [square m/cubic m]
Ch_c = 0.577;
e_c = 0.68;
Cp_c = 1.329;

// From equation 4.13
dp = 6*(1-e_c)/a_c; // [m]
// From equation 4.12
Kw = 1/(1+(2*dp/(3*D*(1-e_c))));

// The viscosity of the gas phase is basically that of air at 293 K and 1 atm
ug = 1.84*10^-5; // [kg/m.s]
// From equation 4.15
Reg = vg*rowg*dp*Kw/(ug*(1-e_c));
// From equation 4.14
sia_o = Cp_c*((64/Reg)+(1.8/(Reg^0.08)));

// From equation 4.11
// deltaP_o/z = T
T = sia_o*a_c*rowg*vg^2/(2*Kw*e_c^3); // [Pa/m]

// Now
Gx = L/(%pi*D^2/4); // [kg/square m.s]
Rel = Gx/(a_c*ul);
Frl = Gx^2*a_c/(rowl^2*g);

// From equation 4.5
// ah/a = x_pr
x = 0.85*Ch_c*Rel^0.25*Frl^0.1;
// From equation 4.3
hl = (12*Frl/Rel)^(1/3)*(x)^(2/3);

// From equation 4.16
// daltaP/deltaP_o = Y
Y = (e_c/(e_c-hl))^1.5*exp(Rel/200);
// Therefore 
// deltaP/z = H
H = Y*T; // [Pa/m]

printf("The superficial velocity is %f m/s\n",vgf);
printf("The pressure drop at flooding is %f Pa/m\n",deltaPf);
printf("The superficial velocity at 70 percent of flooding is %f m/s\n",vg);
printf("The column inside diameter at 70 percent of flooding is %f m\n",D);
printf("The pressure drop for operation at 70 percent of flooding is %f Pa/m\n\n",H);


printf('Illustration 4.3(b) -  Page: 236\n\n');
// Solution (b)
// Similarly for 25 mm metal Hiflow rings above quantities are determined
Fp1 = 42; // [square ft/cubic ft]
Csflood1 = sqrt(Yflood/(ul^0.1*Fp1)); // [m/s]
vgf1 = Csflood1/(sqrt(rowg/(rowl-rowg))); // [m/s]
// From equation 4.9
deltaPf1 = 93.9*(Fp1)^0.7; // [Pa/m of packing]

// For operation at 70% of the flooding velocity
f = 0.7;
// From equation 4.10
vg1 = f*vgf1; // [m/s]
D1 = sqrt(4*Qg/(vg1*%pi));

// For Hiflow rings
a_h = 202.9; // [square m/cubic m]
e_h = 0.961;
Ch_h = 0.799;
Cp_h = 0.689; 

// From equation 4.13
dp1 = 6*(1-e_h)/a_h; // [m]
// From equation 4.12
Kw1 = 1/(1+(2*dp1/(3*D1*(1-e_h))));

// The viscosity of the gas phase is basically that of air at 293 K and 1 atm
ug = 1.84*10^-5; // [kg/m.s]
// From equation 4.15
Reg1 = vg1*rowg*dp1*Kw1/(ug*(1-e_h));
// From equation 4.14
sia_o1 = Cp_h*((64/Reg1)+(1.8/(Reg1^0.08)));

// From equation 4.11
// deltaP_o/z = T
T1 = sia_o1*a_h*rowg*vg1^2/(2*Kw1*e_h^3); // [Pa/m]

// Now
Gx1 = L/(%pi*D1^2/4); // [kg/square m.s]
Rel1 = Gx1/(a_h*ul);
Frl1 = Gx1^2*a_h/(rowl^2*g);

// From equation 4.5
// ah/a = x_pr
x1 = 0.85*Ch_h*Rel1^0.25*Frl1^0.1;
// From equation 4.3
hl1 = (12*Frl1/Rel1)^(1/3)*(x1)^(2/3);

// From equation 4.16
// daltaP/deltaP_o = Y
Y1 = (e_h/(e_h-hl1))^1.5*exp(Rel1/200);
// Therefore 
// deltaP/z = H
H1 = Y1*T1; // [Pa/m]


printf("The superficial velocity is %f m/s\n",vgf1);
printf("The pressure drop at flooding is %f Pa/m\n",deltaPf1);
printf("The superficial velocity at 70 percent of flooding is %f m/s\n",vg1);
printf("The column inside diameter at 70 percent of flooding is %f m\n",D1);
printf("The pressure drop for operation at 70 percent of flooding is %f Pa/m\n\n",H1);