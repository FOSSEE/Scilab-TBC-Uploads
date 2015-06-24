clc;
clear all;
Z2=50;//larger of the load or source impedence
Z1=75;//smaller of the load or source impedence
R1=Z1*sqrt(1-(Z2/Z1));//resistor in series with the load
R2=Z2/sqrt(1-(Z2/Z1));//resistor in parellel with the source
disp(R1,'value of R1 is=');
disp(R2,'value of R2 is=');


