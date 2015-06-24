clc
Vr=10;         //Assigning values to parameters
Vl=15;
Vc=10;
V=sqrt(Vr^2+(Vl-Vc)^2);
V=10+%i*0+0+%i*15+0-%i*10;
[r,t]=polar(V);
disp("Volts",r,"Voltage");