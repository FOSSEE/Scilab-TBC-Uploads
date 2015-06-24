//Page Number: 555
//Example 10.2
clc;
//Given,
er=9.7;
h=0.25; //mm
w=0.25; //mm
f=5D+9; //Hz
c=3D+8; //m/s

//(i) Dielectric constant
dc=((er+1)/2)+(((er-1)/2)*(1/sqrt(1+12*h/w)));
disp(dc,'Dielectric constant:');

//(ii) Phase constant
lam0=c/f;
pc=sqrt(dc)*(2*%pi/lam0);
disp('rad/m',pc/100,'Phase constant:');

//(iii) Microstrip wavelength
lams=lam0/sqrt(dc);
disp('cm',lams*100,'Microstrip wavelength:');

//(iv) Capacitance per unit length
e0=8.854D-12;
cap=(2*%pi*e0)/log((8*h/w)-(w/(4*h)));
disp('F/cm',cap,'Capacitance per unit length:');

//(v) Characterstic Impedance
ci=(60/sqrt(dc))*log((8*h/w)+(w/(4*h)));
disp('ohm',ci,'Characterstic impedance:');

