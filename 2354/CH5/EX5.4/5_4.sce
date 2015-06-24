//example 5.4
clc; funcprot(0);
// Initialization of Variable
h1=3177.2;
x2=0.9;
hf2=191.83;
mdot=4600.0;
Wcvdot=1000.0;
V2=50.0;//velocity
V1=10.0;//velocity
h2=hf2+x2*2392.8;
k1=h2-h1;
k2=(V2^2/2-V1^2/2)/1000.0;
Qcvdot=Wcvdot+mdot*(k1+k2)/3600;
disp(Qcvdot,"specific kinetic energy difference in kW");
clear()
