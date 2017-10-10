//clear//
clear;
clc;

//Example 25.4
y = 0.0012;
vdot = 16000; //[ft^3/min]
P = 760; //[mm Hg]
rho_b = 30; //[lb/ft^3]
Lun = 0.5; //[ft]
L = 3;

//Solution
//(a)
//Form the hand book
Pprime = 151; //[mm Hg]
fs = Pprime; //[mm Hg]
rho_L = 0.805; //[g/cm^3], at 20C
Tnb = 79.6; //[C]
rho_e = 0.75; //[g/cm^3]
M = 72.1;
V = M/rho_e; 
p = y*P; //[mm Hg]
f = p; //[mm Hg]
//At 35C
T = 35+273; //[K]
A = T/V*log10(fs/f);  
//Form Fig. 25.4, 
//the volume adsorbed
V_ads = 24; //[cm^3/100 g carbon]
Wsat = V_ads*rho_e; //[g/100 g carbon]
W0 = 1/3*Wsat; //[g/100 g carbon]
Working_capacity = Wsat-W0; //[g/100 g carbon]
//or
Working_capacity = Working_capacity/100; //[lb/lb carbon]
disp(Working_capacity,'Working capacity of the bed is')

//(b)
u0 = 1; //[ft/s]
A = vdot/u0; //[ft^2]
D = sqrt(4*A/%pi); //[ft]
Abed = 10*27; //[ft^2]
L1 = 4; //[ft]
c0 = y/359*273/298*72.1; //[lb/ft^3]
//Form Eq.(25.3)
tstar = L1*rho_b*(Working_capacity)/(u0*c0*3600); //[h]
Lu1 = L-Lun; //[ft]
tb1 = Lu1/L*tstar; //[h]

//if
L2 = 3; //[ft]
Lu2 = L2-Lun;
tb2 = Lu2/L*tstar; //[h]
//checking for delta_P
//Using Eq.(7.22)
phi_s = 0.7; //from Table 28.1
eps = 0.35; //from Table 7.1
mu = 1.21*10^-5; //[lb/ft-s]
rho = 0.074; //[lb/ft^3]
//For a 4*10-mesh carbon
Dp = 1.108*10^-2; //[ft]
deltaPbyL = 150*1*mu*(1-eps)^2/(32.2*phi_s^2*Dp^2*eps^3)+(1.75*rho*1^2*(1-eps)/(32.2*0.7*Dp*eps^3)); //[lbf/ft^2-ft]
deltaPbyL = deltaPbyL*12/62.4; //[in. H2O/ft]
//for
deltaP = 3*deltaPbyL; //[in. H2O]
//which satisfactory.
mc = 2*(10*27*3)*30; //[lb]

disp('ft',L2,'Allowing for uncertainties in the calculations, satisfactory bed length will be')
disp('ft/s',u0,'gas velocity needed')
disp('lb',mc,'carbon needed')