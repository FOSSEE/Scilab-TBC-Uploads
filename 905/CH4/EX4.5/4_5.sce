clear;
clc;

// Illustration 4.5
// Page: 245

printf('Illustration 4.5 -  Page: 245\n\n');

// solution
//*****Data*****//
//  a-chloroform    b-water    c-air
T = 298; // [K]
Dv = 1; // [vessel diameter, m]
Vb = 10; // [kg/s]
ca = 240*10^-6; // [gram/l]
xr = 0.9; // [chloroform which is to be removed]
m = 220;
Ds = 0.5; // [diameter of sparger, m]
no = 90; // [number of orifices]
Do = 3*10^-3; // [diameter of orifice, m]
nm = 0.6; // [mechanical efficiency]
rowb = 1000; // [kg/cubic m]
R = 8.314;
Mc = 29; // [gram/mole]
Mb = 18; // [gram/mole]
g = 9.8; // [square m/s]
//*****//

Vair = 0.1; // [kg/s as calculated in chapter 3]
mg = Vair/no; // [mass flow rate through each orifice, kg/s]
ug = 1.8*10^-5; // [kg/m.s]
Reo = 25940; // [Renoylds number]
// From equ. 4.20
dp = 0.0071*Reo^-0.05; // [m]

// Since the water column height is not known, therefore an iterative procedure must be implemented.
// Assuming column height, Z = 0.5 m
Z = 0.5; // [m]
// For Z = 0.5 m
rowl = 1000; // [kg/cubic m]
Ps = 101.3; // [kPa]
Po = Ps +  (1000*9.8*0.5/1000); // [kPa]
Pavg = (Po+Ps)/2; // [kPa]
rowg = Pavg*Mc/(R*T); // [kg/cubic m]

area = %pi*Dv^2/4; // [square m]
vg = Vair/(rowg*area); // [m/s]
// In this case rowl = rowg and sigma = sigmaAW
// From equation 4.22
// Vg = vg
// vg/vs = 0.182
vs = vg/0.182; // [m/s]
vl = -Vb/(rowl*area); // [negative because water flows downward, m/s]
// From equ 4.21

deff('[y] = f12(phig)','y = vs - (vg/phig)-(-vl/(1-phig))');
phig = fsolve(0.1,f12);
// Now in this case
S = vl/(1-phig);
// Value of 'S' comes out to be less than 0.15 m/s
// Therefore 
dp = (dp^3*Po/Pavg)^(1/3); // [m]
// From equ 4.23
a = 6*phig/dp; // [m^-1]
// Now we calculate diffusivity of chloroform
Vba = 88.6; // [cubic cm/mole]
u = 0.9*10^-3; // [Pa-s]
e = (9.58/(Vba)-1.12);
// From equation 1.53
Dl = 1.25*10^-8*((Vba)^-0.19 - 0.292)*T^1.52*(u*10^3)^e; // [square cm/s]

// And Schmidt number is 
Scl = 833; // [Schmidt Number]

// Now we calculate  dp*g^(1/3)/Dl^(2/3) = J
J = dp*g^(1/3)/(Dl*10^-4)^(2/3)
Reg = dp*vs*rowl/u; // [Gas bubble Renoylds number]
// From equ 4.25
Shl = 2 + 0.0187*Reg^0.779*Scl^0.546*J^0.116;

// For dilute solution xbm = 1 or c = 55.5 kmole/cubic m
// Then for Nb = 0
c = 55.5; // [kmole/cubic m]
kx = Shl*c*Dl*10^-4/dp; // [kmole/square m.s]
mtc = kx*a; // [kmole/cubic m.s]

L = Vb/Mb; // [kmole/s]
Gmx = L/area; // [kmole/square m.s]
V = Vair/Mc; // [kmole/s]
A = L/(m*V); // [absorption factor]

// From equ 4.28
 // For, xin/xout = x = 10
 x = 10;
Z = (Gmx/(kx*a*(1-A)))*log(x*(1-A)+A);

// With this new estimated Z ,we again calculate average pressure in the   // column of water
Po1 = 110.1; // [kPa]
Pavg1 = 105.7; // [kPa]
rowg1 = Pavg1*Mc/(R*T);
// Now value of rowg1 obtained is very close to value used in the first   // iteration. Therefore on three iteractions we achieve a value of 'Z'
Z1 = 0.904; // [m]

rowgo = Po1*Mc/(R*T); // [kg/cubic m]
vo1 = 4*mg/(%pi*Do^2*rowgo); // [m/s]
// Therefore,    vo1^2/(2*gc) = F
gc = 1;
F = vo1^2/(2*gc); // [J/kg]
// And           R*T*log(Po/Ps)/Mc = G
G = R*T*1000*log(Po1/Ps)/Mc; // [J/kg]
Zs = 0
// And   (Z1-Zs)*g/gc = H
H = (Z1-Zs)*g/gc; // [J/kg]
// From equ 4.27
W = F+G+H; // [J/kg]
// Now the air compressor power is
W1 = W*Vair*10^-3/nm; // [kW]

printf("The depth of the water column required to achieve the specified 90percent removal efficiency is %f m\n\n",Z1);
printf("The power required to operate the air compressor is %f kW\n\n",W1);