clear;
clc;
l=100;R=10;G=10^-5;Vs=40;Zr=0;
Zo=sqrt(R/G);
P=sqrt(R*G);
Zin=Zo*(Zr+(Zo*tanh(P*l)))/(Zo+(Zr*tanh(P*l)));
Is=Vs/Zin;
V=(Vs*(cosh(P*l)))-(Is*Zo*(sinh(P*l)));
Vm=2*V;
printf("Potential at mid point = %f volts",Vm);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
