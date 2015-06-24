//example 7.7
Gammasat=18.86;
Gammaw=9.81;
clc; funcprot(0);
phi1=%pi/180*30;
phi2=%pi/180*26;
Kp1=(tan(%pi/4+phi1/2))^2;
Kp2=(tan(%pi/4+phi2/2))^2;
//for top soil
c=0;
sigma0=31.44;
sigmap=sigma0*Kp1+2*c*sqrt(Kp1);
disp(sigmap,"passive pressure for top layer in kN/m^2");
//for z=2
c=10;
sigma0=31.44;
sigmap=sigma0*Kp2+2*c*sqrt(Kp2);
disp(sigmap,"passive pressure for z=2m in kN/m^2");
//for z=3
c=10;
sigma0=15.72*2+(Gammasat-Gammaw)*1;
sigmap=sigma0*Kp2+2*c*sqrt(Kp2);
disp(sigmap,"passive pressure for z=3m in kN/m^2");

