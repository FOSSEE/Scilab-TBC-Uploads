// Example 9_6
clc;funcprot(0);
// Given data
L=1.5;// The length in km
D=6;// Diameter in inch
h=80;// m
// Assume 
deltah_l=20;// m
g=9.807;// The acceleration due to gravity in m/s^2
nu=1*10^-6;// m/s^2
epsilon=5*10^-5;// roughness in m

// Calculation
D=D*2.54*10^-2;// m
sqrtoffintoRe_D=((2*g*deltah_l*D^3)/(((nu)^2)*L*10^3))^(1/2);
Re_D=-2*sqrtoffintoRe_D*log10(((epsilon/D)/3.7)+(2.51/(sqrtoffintoRe_D)));// Reynolds number
Q=(%pi*D*nu*Re_D)/4;// The volume flow rate in m^3/s
Q_20=(Q*60)/(3.782*10^-3)//  The volume flow rate in gal/min
deltah=150*(1-(Q_20/1000)^2);// m
dh_20=deltah-(h+deltah_l);// m
deltah_l=40;// m
sqrtoffintoRe_D=((2*g*deltah_l*D^3)/(((nu)^2)*L*10^3))^(1/2);
Re_D=-2*sqrtoffintoRe_D*log10(((epsilon/D)/3.7)+(2.51/(sqrtoffintoRe_D)));// Reynolds number
Q=(%pi*D*nu*Re_D)/4;// The volume flow rate in m^3/s
Q_40=(Q*60)/(3.782*10^-3)//  The volume flow rate in gal/min
deltah=150*(1-(Q_40/1000)^2);// m
dh_40=deltah-(h+deltah_l);// m
Q=((((dh_20)/(dh_20-dh_40))*(Q_40-Q_20))+Q_20);// GPM
deltah=150*(1-(Q/1000)^2);// m
deltah_l=deltah-h;// m
printf("\nThe flow rate through the system,Q=%3.1f GPM \ndeltah=%3.1f m \ndeltah_l=%2.2f m",Q,deltah,deltah_l);
printf("\nContinuing this process to improve our estimate of Q and Ah we finally arrive at:Q=527.7(GPM);deltah=108.3 m")

