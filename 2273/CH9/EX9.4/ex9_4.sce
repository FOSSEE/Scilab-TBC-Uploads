//Find max electrostatic stresses and charging kVA
clear;
clc;
//soltion
//given
r=0.6;//cm
d=0.025;//m//Diameter of conductor
V=33000;//Volts
f=50;//Hz
l=3.4;//km
Er=3.1;//permitivity of the dielectric used
D=d+2*r*10^-2;//m//Internal diameter of sheath
gmax=2*V/(d*log(D/d));
printf("Maximum electrostatic stresses= %.1f*10^6 V/m\n",gmax/10^6);
C=0.024*Er*l*10^-6/(log10(D/d));
printf("Capacitance of cable= %.4f*10^-6 farad\n",C*10^6);
Ic=2*%pi*f*C*(V/sqrt(3));
printf("Charging current per phase per km length= %.2f A\n",Ic);
kVA=sqrt(3)*V*Ic*10^-3;
printf("Total Charging= %.2f kVAR",kVA);
//THERE ARE SOME CALCULATION ERRORS IN THE BOOK BECAUSE OF WHICH Ic=0.3078 A AND TOTAL CHARGING CURRENT= 17.57kVAR
