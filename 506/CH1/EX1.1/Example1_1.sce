clear;
clc;

//Caption: Plane Parallel plate Capacitor
//Given Data
d=0.001;//distance between parallel plate in m
V=1000;//applied voltage
q=1.6*(10^-19);//charge on an electron
m = 9.1*(10^-31);//mass of electron in kg
//Time taken by electron to reach other side of parallel plate capacitor
E=V/d;//Electric Field in V/m
//Formulae : s = u*t + (a*t^2)/2
a = (q*E)/m;//acceleration on electron in m/s^2
t = (2*d/a)^0.5;//time taken to reach the other side of plate
disp('sec',t,'Time taken to reach other side = ');

//Magnitude of force exerted on electron
disp('Since the potential is constant the force will be constant between the paltes of capacitor');
F=q*E;//force
disp('N',F,'Force on electron = ');

//Velocity of electron at the other plate
//Formulae: v = u + a*t
v = a*t;//velocity at the end of other plate
disp('m/sec',v,'v=');


//end