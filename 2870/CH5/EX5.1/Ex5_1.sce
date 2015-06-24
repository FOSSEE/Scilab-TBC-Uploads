clc;clear;
//Example 5.1

//given data
V=10;
t=50;
p=1;//in kg/L
re=0.8/2/100;//in m

//calculations
Vd=V/t*3.7854;//factor 0f 3.7854 for gal to L
disp(Vd,'volumne flow rate through hose in L/s');
m=p*Vd;
disp(m,'mass flow rate through hose in kg/s');
Ae=%pi*re^2;
Ve=Vd/Ae/1000;//factor of 1000 for L to m^3
disp(Ve,'average velocity at the nozzle in m/s');
