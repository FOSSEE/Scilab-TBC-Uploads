close();
clear;
clc;
Vcc = 24;//V
Rc = 5000;//ohm
Re = 200;
Vcesat = 0;
Icbo = 0;
//Maximum amplitude 'Icq'
Icq = 1/2*(Vcc/(Rc+Re));
Icm1 = 0;
Icm2 = Icq*50/100;
Icm3 = Icq;
Ps = Vcc*Icq;
Po1 = Icm1^2*Rc/2;
Po2 = Icm2^2*Rc/2;
Po3 = Icm3^2*Rc/2;
Pc1 = Icq^2*(Rc+Re)-Po1;
Pc2 = Icq^2*(Rc+Re)-Po2;
Pc3 = Icq^2*(Rc+Re)-Po3;
n1 = Po1/Ps*100;
n2 = Po2/Ps*100;
n3 = Po3/Ps*100;
mprintf('(a): Icq = %0.3f mA\n(b): Ps = %0.2f mW\n(c):Values of Po at 0,50%% and 100%% of maximum undistorted collector current are %0.0f , %0.2f and %0.2f mW respectively.\n(d): Values of Pc are %0.1f, %0.2f and %0.2f mW\n(e): Values of efficiency are %0.0f, %0.2f %% and %0.2f %%',Icq*1000,Ps*1000,Po1*1000,Po2*1000,Po3*1000,Pc1*1000,Pc2*1000,Pc3*1000,n1,n2,n3);