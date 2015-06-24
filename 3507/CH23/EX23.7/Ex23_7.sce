//chapter23
//example23.7
//page517

alpha=60 // degrees
Vm=200 // V
R_L=100 // ohm

V_av=Vm*(1+cos(alpha*%pi/180))/%pi

I_av=V_av/R_L

printf("dc output voltage = %.3f V \n",V_av)
printf("load current for firing angle of 60 degrees = %.3f A \n",I_av)
