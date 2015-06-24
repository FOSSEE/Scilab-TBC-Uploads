//clear//
clear;
clc;

//Example 25.3
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
L = 8; //[cm]

//(a)
//From Example 25.2
ratio_W = 0.495;
tou = 0.495;
//From Fig. 25.10
N = -1.6/(tou-1); //at c/c0 = 0.05
Kca = N*u0/L; //[s^-1]
disp('s^-1',Kca,'Kca = ',N,'N = ') 
//plot(t1,cbyc01,t2,cbyc02)

//(b)
Dp = 0.37; //[cm]
mubyrho = 0.152; //[cm^2/s], at 25C, 1atm
Dv = 0.0861; //[cm^2/s]
Nre = Dp*u0/mubyrho;
Nsc = mubyrho/Dv;
//From Eq.(21.62),
Nsh = 1.17*Nre^0.585*Nsc^(1/3);
kc = Nsh*Dv/Dp; //[cm/s]
a = 6*(1-eps)/Dp; //[cm^2/cm^3]
kca = kc*a; //[s^-1]
//Since Kca is slightly less than half the predicted value of kca,
//the external resistance is close to half the total resistance, and 
//the calculated value of N need not be revised. The internal
//coefficient can be obtained from
Kc = Kca/a; //[cm/s]
kc_int1 = 1/(1/Kc-1/kc); //[cm/s]
//If the diffusion into the particle occured only in the gas phase, the
//maximum possible value of De would be about Dv/4, which leads to
kc_int2 = 10*Dv/(4*Dp); //[cm/s]
disp('Kca is slightly less than half the predicted value of kca');
