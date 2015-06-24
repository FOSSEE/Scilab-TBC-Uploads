
//Example 2.16//resistance and capacitance
clc;
clear;
w=7500;//in rad/s
R2=140;//in ohms
R3=1000;//in ohms
R4=R3;//in ohms
C2=0.0115;//capacitance in micro farad
oC2=(w*C2*10^-6);//IN OHMS
Z2= R2+(%i*(1/oC2));
Z3=R3;//
Z4=R4;//
Z1=(Z2*Z3)/(Z4);//
R1=real(Z1);//
C1=1/(w*imag(Z1));//capacitance in farad
disp(R1,"resistance in arm CD in ohms")
disp(C1*10^6,"capacitance in arm CD in micro farads")
