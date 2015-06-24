//example 17.6
clc; funcprot(0);
// Initialization of Variable
m=0.1;
cp=4179;//J/kg/K
q=10^6;//W/m^3
Do=0.04;
Di=0.02;
pi=3.14;
L=4*m*cp/(Do^2-Di^2)/pi/q*(60-20);
disp(L,"tube length in m");
Re=4*m/pi/Di/6.57e-4;
disp(Re,"reynolds number");
qs=q*(Do^2-Di^2)/4/Di;
ho=qs/(70-60);
disp(ho,"local heat coefficient in W/m^2-K");
clear()
