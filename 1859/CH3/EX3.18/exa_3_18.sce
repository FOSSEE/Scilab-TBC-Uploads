// Exa 3.18
clc;
clear;
close;
// Given data
Rm= 50;// in ohm
R1= 10;// in kohm
R1=R1*10^3;// in ohm
R2= 50;// in ohm
Im_FSD= 100*10^-6;//meter FSD current in amp

// At 0.5 FSD , with 1.5 V
E=1.5;// in volt
Im= 0.5*Im_FSD;// in amp
Vm= Im*Rm;// in volt
I0= Vm/R2;//in amp
I=I0+Im;// in amp
Rx= E/I-R1;// in ohm
Rx=Rx*10^-3;//in kohm
disp(Rx,"Unknown resistance at 0.5 FSD with 1.5 V in kohm")
// With E= 1.25 V and Rx=0
E=1.25;// in volt
Rx=0;
I=E/(R1+Rx);// in amp
I0=I-Im_FSD;// in amp
Vm= Im_FSD*Rm;// in volt
R2= Vm/I0;// in ohm
disp(R2,"Zero adjuster resistance in ohm")

// At 0.5 FSD , with 1.25 V
E=1.25;// in volt
Im= 0.5*Im_FSD;// in amp
Vm= Im*Rm;// in volt
I0= Vm/R2;//in amp
I=I0+Im;// in amp
Rx= E/I-R1;// in ohm
Rx=Rx*10^-3;//in kohm
disp(Rx,"Unknown resistance at 0.5 FSD with 1.25 V in kohm")
