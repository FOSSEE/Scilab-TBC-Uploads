//clear//
clear;
clc;

//Example 25.2
//Solution
cbyc0 =0.05;
u0 = 58; //[cm/s]
Dv = 0.37; //[m^2/g]
c0 = 365; //[ppm]
S = 1194; //[m^2/g]
T = 25; //[C]
rho_b = 0.461; //[g/cm^3]
P = 737; //[mm Hg]
M = 74.12; //[g/mol]
eps = 0.457;
t = 1:0.5:8.5;
t(4) = 2.4; t(5) = 2.8; t(6) = 3.3;
cbyc0 =[0.005,0.01,0.027,0.05,0.1,0.2,0.29,0.56,0.0019,0.003,0.0079,0.018,0.039,0.077,0.15,0.24];
t1 = t(1:8);
t2 = t(9:16);
cbyc01 = cbyc0(1:8);
cbyc02 = cbyc0(9:16);
plot(t1,cbyc01,t2,cbyc02);
xgrid();
xlabel('t, Hours');
ylabel('c/c0');
title('Brakthrough curves for Example 25.2');
legend('L = 8cm','L = 16cm');

//(a)
FA = u0*c0*10^-6/22400*273/298*737/760*M*3600; //[g/cm^2-h]
// The total solute adsorbed is the area above the graph multiplied
//by FA. For the 8-cm bed, the area is
Area_bed = 4.79; //[h]
//This area corresponds to the ideal time that would be required to adsorb
//the same amount if the breakthrough curve were a vertical line. The mass
//of carbon per unit cross-sectional area of the bed is
Ac = 8*rho_b; //[g/cm^2]
//Thus,
Wsol = FA*Area_bed/Ac; //[g solute/g carbon]
//At the break point, where 
cbyc0_break = 0.05;
//and
t_break =2.4; //[h]
Area_bed_break = 2.37; //[h]
//The amount adsorbed up to the break point is then
Wb = FA*t_break/Ac; //[g solute/ g carbon] 
ratio_W = Wb/Wsol;
//Thus 50 percent of the bed capacity is unused, which can be representd
//by a length 4 cm.
//For the 16-cm bed the breakthrough curve has the same initial slope as the cuve
//for 8-cm bed, and although data were not taken beyond cbyc0 = 0.25,
//the curves are assumed to be parallel
//For the entire bed,
tT = 9.59; //[h]
Wsat = FA*tT/(16*rho_b); //[g solute/ g carbon]
//At 
cbyc0_break = 0.05;
t_break  =7.1; //[h]
Area_break = 7.07; //[h]
Wb = FA*Area_break/(16*rho_b); //[g solute/g carbon]
ratio_W = Wb/Wsat;
//At the break point, 74 percent of the bed capacity is used,
//which corresponds to an unused section of length 0.26*16 cm.
//Within experimental error, the lengths of unused bed agree,
//and 4.1 cm is expected value for a still longer bed.
disp('cm',4.2,'length of the bed used','percent',ratio_W,'saturation capacity of the carbon')

//(b)
L = 32; //[cm]
L_exp = L-4.1; //[cm]
//Fraction of the bed used
fra_bed = L_exp/L; 
//The break-point time is,
tb = L_exp*rho_b*Wsat/FA; //[h]
disp('h',tb,'break point-time ')
