//Find max and min electrostatic stresses and capacitance and charging current
clear;
clc;
//soltion
//given
a=0.645;//cm^2
d=sqrt(4*a/%pi)*0.01;//m//Diameter of conductor
V=11000;//Volts
f=50;//Hz
Er=3.5;//permitivity of the dielectric used
D=0.0218;//m//Internal diameter of sheath
gmax=2*V/(d*log(D/d))/10^5;
printf("Maximum electrostatic stresses= %.2f kV/cm\n",gmax);
gmin=2*V/(D*log(D/d))/10^5;
printf("Minimum electrostatic stresses= %.1f kV/cm\n",gmin);
C=0.024*Er*10^-6/(log10(D/d));
printf("Capacitance of cable= %.2f*10^-6 farad\n",C*10^6);
Ic=2*%pi*f*C*V/sqrt(3);
printf("Charging current per phase per km length= %.2f A ",Ic);
