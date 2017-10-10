//input impedance Rd, Open loop voltage gain Aol, Feedback resistance Rf
close();
clear;
clc;
R1 = 1000;
Rf = 10000;
Rd = 1000;
Aol = -10^(4);
Av = Aol/(1+R1/Rf*(1-Aol)+R1/Rd);
Avideal = -Rf/R1;
//Percent error 'E'
E = (Av-Avideal)/Av*100;
mprintf('Av = %0.3f \nAvideal = %0.0f\nand percent error is %0.2f %%',Av,Avideal,E);