clc;
warning('off');
printf("\n\n example2.6 - pg36");
// given
d=1.2*10^-2;  //[m] - diameter of the hole
Ca1=0.083;  //[kmol/m^3]
Ca2=0;  //[kmol/m^3]
L=0.04;  //[m] - thickness of the iron piece 
Dab=1.56*10^-3;  //[m^2/sec] - diffusion coefficient of CO2
A=(%pi*d^2)/4;  //area
// (a)using the formula (Na/)A=(Ja/A)=-Dab(delCa/delx)
intdCa=integrate('1','Ca',Ca2,Ca1);
intdx=integrate('1','x',0,0.04);
g=(intdCa/intdx)*Dab;
printf("\n\n (a) The molar flux with respect to stationary coordinates is\n (Na/A)=%fkmol/m^2*sec",g);
// using the formula na/A=(Na/A)*Ma
Ma=44.01;  //[kg/mol] - molcular weight of co2
na=(intdCa/intdx)*Dab*Ma*A*(3600/0.4539);
printf("\n\n The mass flow rate is %flb/hr",na);

