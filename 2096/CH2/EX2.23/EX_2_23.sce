
//Example 2.23//calculate the constants zX
clc;
clear;
R1=200;//IN OHMS
f=1;//frequency in kHz
C2=5;//in micro farad
R2=200;//in ohms
R3=500;//in ohms
C3=0.2;//in micro frads
Z1=R1;//
Z2=R2-(%i*(1/(2*%pi*f*10^3*C2*10^-6)));//
Z3=R3-(%i*(1/(2*%pi*f*10^3*C3*10^-6)));//
Zx=(Z2*Z3)/Z1;
Rx=real(Zx);
Cx=((1/(2*%pi*f*10^3*imag(-Zx))));//
disp(Rx,"unknown resistance in ohms")
disp(Cx*10^6,"unknown capacitance in micro farads")
