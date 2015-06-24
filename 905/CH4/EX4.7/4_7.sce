clear;
clc;

// Illustration 4.7
// Page: 257

printf('Illustration 4.7 -  Page: 257\n\n');

// solution//
Do = 5; // [mm] 
g = 9.8; // [square m/s]
hw = 50; // [mm]
// From example 4.4
Qg = 1.145; // [cubic m/s]
// From example 4.6
Ah = 0.062; // [square m]
// Do/l = t = 5/2 = 2.5
t = 2.5;
// Ah/Aa = A = 0.101
A = 0.101;
rowg = 1.923; // [kg/cubic m]
rowl = 986; // [kg/cubic m]
roww = 995; // [kg/cubic m] 

vo = Qg/Ah; // [m/s]
// From equation 4.39
Co = 0.85032 - 0.04231*t + 0.0017954*t^2; // [for t>=1]
// From equation 4.38
hd = 0.0051*(vo/Co)^2*rowg*(roww/rowl)*(1-A^2); // [cm]

// From example 4.6 
Aa = 0.615; // [square m]
va = Qg/Aa; // [m/s]

// From equation 4.41
Ks = va*sqrt(rowg/(rowl-rowg)); // [m/s] 
phie = 0.274;

// From equation 4.4
ql = 0.000815; // [cubic m/s]

// From example 4.6
Lw = 0.719; // [m]
Cl = 50.12 + 43.89*exp(-1.378*hw);
sigma = 0.07; // [N/m]
// From eqution 4.40
hl = phie*(hw*10^-1+Cl*(ql/(Lw*phie))^(2/3));

// From equation 4.42
ho = 6*sigma/(g*rowl*Do*10^-3)*10^2; // [cm] 
// From equation 4.37
ht = hd+hl+ho; // [cm of clear liquid/tray]
deltaPg = ht*g*rowl*10^-2; // [Pa/tray]
printf("The tray gas-pressure drop for the ethanol is %f Pa/tray\n\n",deltaPg);