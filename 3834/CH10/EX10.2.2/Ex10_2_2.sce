//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.2.2
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given

//case 1
lambda=840;//Operating wavelength in nm
Eg=1248/lambda;//semiconductor bandgap in eV
e=1.6E-19;//Electrons value in Coulomb
V=Eg;//voltage in V
R=1;//Reflectivity
I=10E-3;//Current in A
P1=I*I*R;
P2=I*V;
P3=P1+P2;
Pout=1.25E-3;//Output power in W
ETAp=Pout/P3;
mprintf("Power Efficiency of a VCSEL diode = %.3f", ETAp);
ETAP=ETAp*100;
mprintf("\n Hence, Power Efficiency of a VCSEL diode = %.1f Percent ",ETAP);

//case 2
lambda2=1300;//Operating wavelength in nm
Eg2=1248/lambda2;//semiconductor bandgap in eV
e2=1.6E-19;//Electrons value in Coulomb
V2=Eg2;//voltage in V
R2=1.84;//Reflectivity
I2=312E-3;//Current in A
P11=I2*I2*R;
P22=I2*V2;
P33=P11+P22;
Pout1=1E-3;//Output power in W
ETAp1=Pout1/P33;
mprintf("\nPower Efficiency of a broad area laser diode = %.3f", ETAp1);
ETAP1=ETAp1*100;
mprintf("\n Hence, Power Efficiency of a broad area laser diode = %.1f Percent ",ETAP1);//the answer vary due to rounding
