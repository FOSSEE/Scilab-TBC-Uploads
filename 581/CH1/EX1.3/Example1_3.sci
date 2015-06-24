
clear;
clc;
printf("\t example 1.3\n");
q1=6000; //Heat flux, W*m^-2
T1=120; // Heater Temperature, C
T2=70; //final Temperature of Heater
q2=2000; // final heat flux
h=q1/(T1-T2);// formula for average heat transfer cofficient
printf("\t Average Heat transfer coefficient is:%.0f W/(m^2*K)\n",h);

Tnew=T2 + q2/h; //formula for new Heater temperature
printf("\t new Heater Temperature is:%.2f C\n",Tnew);
//End