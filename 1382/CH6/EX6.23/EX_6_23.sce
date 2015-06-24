// Example 6.23;// feedback factor and change in overall gain
clc;
clear;
close;
Zo=12.6;//output impedance in killo ohms
Zofb=600;//output impedance in ohms with feedback
Ad= 60;//gain in dB
A= 10^(Ad/20);//gain
Beta= ((Zo*10^3/Zofb)-1)/A;//feedback factor
dA= 10;// open voltage gain
dAf= (1/(1+Beta*A))*dA;//GAIN WITH FEEDBACK
disp(Beta,"feedbck factor is")
disp(dAf,"change in overall gain is in percentage")


