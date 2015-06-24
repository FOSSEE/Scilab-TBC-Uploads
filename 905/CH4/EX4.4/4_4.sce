clear;
clc;

// Illustration 4.4
// Page: 237

printf('Illustration 4.4 -  Page: 237\n\n');

// solution
//*****Data*****//
// a-ethanol   b- gas(CO2 rich vapor)   c-liquid water
P = 110; // [kPa]
T = 303; // [K]
R = 8.314; 
Vb = 180; // [kmole/h]
xab = 0.02; // [molar composition of ethanol in gas]
Vc = 151.5; // [kmole/h]
d = 0.97; // [ethanol absorbed]
Ma = 46; // [gram/mole]
Mb = 44; // [gram/mole]
Mc = 18; // [gram/mole]
g = 9.8; // [square m/s]
//*****//

// For Inlet gas
Mg = (1-xab)*Mb+xab*Ma; // [gram/mole]
V = Vb*Mg/3600; // [kg/h]
rowg = P*Mg/(R*T); // [kg/cubic m]
Qg = V/rowg; // [cubic m/s]

// For exiting liquid
b = Vb*xab*Ma*d; // [ethanol absorbed in kg/h]
L = (Vc*Mc+b)/3600; // [kg/s]
rowl = 986; // [kg/cubic m]

X = (L/V)*(sqrt(rowg/rowl));
// From equation 4.8
Yflood = exp(-(3.5021+1.028*log(X)+0.11093*(log(X))^2));

printf('Illustration 4.4(a) -  Page: 237\n\n');
// Solution(a)

// For 50 mm metal Hiflow rings
Fp = 16; // [square ft/cubic ft]
ul = 6.31*10^-4; // [Pa.s]
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

// From Table 4.1, for 50 mm metal Hiflow rings
a = 92.3; // [square m/cubic m]
Ch = 0.876;
e = 0.977;
Cp = 0.421;

// From equation 4.13
dp = 6*(1-e)/a; // [m]

// From equation 4.12
Kw = 1/(1+(2*dp/(3*D*(1-e))));

// The viscosity of the gas phase is basically that of air at 303 K and 110 kPa
ug = 1.45*10^-5; // [kg/m.s]
// From equation 4.15
Reg = vg*rowg*dp*Kw/(ug*(1-e));
// From equation 4.14
sia_o = Cp*((64/Reg)+(1.8/(Reg^0.08)));

// From equation 4.11
// deltaP_o/z = I
I = sia_o*a*rowg*vg^2/(2*Kw*e^3); // [Pa/m]

// Now
Gx = L/(%pi*D^2/4); // [kg/square m.s]
Rel = Gx/(a*ul);
Frl = Gx^2*a/(rowl^2*g);

// From equation 4.5
// ah/a = x
x = 0.85*Ch*Rel^0.25*Frl^0.1;
// From equation 4.3
hl = (12*Frl/Rel)^(1/3)*(x)^(2/3);

// From equation 4.16
// daltaP/deltaP_o = Y
Y = (e/(e-hl))^1.5*exp(Rel/200);
// Therefore 
// deltaP/z = H
H = Y*I; // [Pa/m]

printf('Since the pressure drop is too high, we must increase the tower diameter to reduce the pressure drop.\n');
// The resulting pressure drop is too high; therefore, we must increase the tower diameter to reduce the pressure drop. Appendix D presents a Mathcad computer 
// program designed to iterate automatically until the pressure drop criterion is satisfied.
// From the Mathcad program we get
D1 = 0.738; // [m]
printf("The tower diameter for pressure drop of 300 Pa/m of packed height is %f m\n\n",D1);

printf('Illustration 4.4(b) -  Page: 241\n\n');
// Solution(b)

// For the tower diameter of D = 0.738 m, the following intermediate results were obtained from the computer program in Appendix D:
vg1 = 2.68; // [m/s]
vl1 = 0.00193; // [m/s]
hl1 = 0.017;
ah1 = 58.8; // [square m/cubic m]
Reg1 = 21890;
Rel1 = 32.6;
Kw1 = 1/(1+(2*dp/(3*D1*(1-e))));


f1 = vg1/vgf;
printf("The fractional approach to flooding conditions is %f\n\n",f1);

printf('Illustration 4.4(c) -  Page: 242\n\n');
// Solution(c)
// For ethanol
Vc_a = 167.1; // [cubic cm/mole]
sigma_a = 4.53*10^-10; // [m]
// E/k = M
M_a = 362.6; // [K]

// For carbon dioxide
sigma_b = 3.94*10^-10; // [m]
M_b = 195.2; // [K]

// From equation 1.48
Vb_a = 0.285*Vc_a^1.048; // [cubic cm/mole]

e1 = (9.58/(Vb_a)-1.12);
// From equation 1.53
Dl = 1.25*10^-8*((Vb_a)^-0.19 - 0.292)*T^1.52*(ul*10^3)^e1; // [square cm/s]

// From equation 1.49
Dg = 0.085; // [square cm/s] 

// From Table 4.2, for 50 mm metal Hiflow rings
Cl = 1.168
Cv = 0.408;
// From equation 4.17
kl = 0.757*Cl*sqrt(Dl*a*vl1*10^-4/(e*hl1)); // [m/s]
mtcl = kl*ah1; // [s^-1]

Sc = ug/(rowg*Dg*10^-4);
// From equation 4.18
ky = 0.1304*Cv*(Dg*10^-4*P*1000/(R*T))*(Reg1/Kw1)^(3/4)*Sc^(2/3)*(a/(sqrt(e*(e-hl1)))); // [mole/square m.s]
mtcg = ky*ah1*10^-3; // [kmole/cubic m.s]
printf("The gas and liquid volumetric mass transfer coefficients are %e kmole/cubic m.s and %e s^-1 respectively.\n\n",mtcg,mtcl);

