clear;
clc;

// Illustration 4.6
// Page: 255

printf('Illustration 4.6 -  Page: 255\n\n');

// solution
//*****Data*****//
Ff = 0.9; // [foaming factor]
sigma = 70; // [liquid surface tension, dyn/cm]
Do = 5; // [mm]
//From Example 4.4
// X = 0.016;
p = 15 // [pitch, mm]
// From equ 4.35
// Ah/Aa = A
A = 0.907*(Do/p)^2; // [ratio of vapor hole area to tray active area]

// Assume 
t = 0.5; // [m]
// From equ 4.32
alpha = 0.0744*t+0.01173;
beeta = 0.0304*t+0.015;

// Since X<0.1, therefore
X = 0.1;
// From equ 4.31
Cf = alpha*log10(1/X) + beeta; 
// Since Ah/Aa > 0.1, therefore
Fha = 1;
Fst = (sigma/20)^0.2; // [surface tension factor]
// From equ 4.30
C = Fst*Ff*Fha*Cf;

// From Example 4.4
rowg = 1.923; // [kg/cubic m]
rowl = 986; // [kg/cubic m]
Qg = 1.145; // [cubic m/s]
// From equation 4.29
vgf = C*(sqrt((rowl-rowg)/rowg)); // [m/s]
// Since X<0.1
// Equ 4.34 recommends Ad/At = B = 0.1
B = 0.1;
// For an 80% approach to flooding, equation 4.33 yields
f = 0.8; 
D = sqrt((4*Qg)/(f*vgf*%pi*(1-B))); // [m]
// At this point, the assumed value of tray spacing ( t = 0.5 m) must be   // checked against the recommended values of Table 4.3. Since the calculated
// value of D < 1.0 m, t = 0.5 m is the recommended tray spacing, and no
// further iteration is needed.

deff('[y] = f14(Q)','y = B-((Q-sin(Q))/(2*%pi))');
Q = fsolve(1.5,f14);
Lw = D*sin(Q/2); // [m]
rw = D/2*cos(Q/2); // [m]

At = %pi/4*D^2; // [total cross sectional area, square m]
Ad = B*At; // [Downcomer area, square m]
Aa = At-2*Ad; // [ Active area over the tray, square m]
Ah = 0.101*Aa; // [Total hole area, square m]

printf('Summarizing, the details of the sieve-tray design are as follows:\n\n');
printf(" Diameter = %f m\n Tray spacing = %f m\n Total cross-sectional area  = %f square m\n Downcomer area = %f square m\n Active area over the tray = %f square m\n Weir length = %f m\n Distance from tray center to weir = %f m\n Total hole area = %f square m\n Hole arrangement: 5 mm diameter on an equilateral-triangular pitch 15 mm between hole centers, punched in stainless steel sheet metal 2 mm thick\n\n",D,t,At,Ad,Aa,Lw,rw,Ah); 