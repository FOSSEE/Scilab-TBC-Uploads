// Calculate the Torque
clc;

E=110*10^9;
t=0.073*10^-3;
b=0.51*10^-3;
l=370*10^-3;
th=%pi/2;
T=(E*b*t^3)*th/(12*l);
disp(T,' Controlling torque(Nm)=')
