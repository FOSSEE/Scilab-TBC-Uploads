clear;
clc;

//Example8.2[Pressure Drop in a tube]
//Given:-
Tw=5;//Temperature of water[degree Celcius]
//Properties of water at Tw
rho=999.9;//[kg/m^3]
mu=1.519*10^(-3);//Viscosity[kg/m.s]
d=0.003;//diameter[m]
l=10;//length[m]
v_avg=0.9;//Average flow velocity[m/s]
//Solution:-
Re=(rho*v_avg*d)/mu;
disp(Re,"The reynolds number is ")
f=64/ceil(Re);
disp(f,"Friction factor is")
del_P=f*l*rho*(v_avg^2)/(2*d);//[N/m^2]
disp("kPa",del_P/1000,"The Pressure drop is ")
V=v_avg*(%pi*(d^2))/4;//[m^3/s]
disp("m^3/s",V,"Volumetric flow rate is")
W_pump=V*del_P;//[W]
disp("W",W_pump,"Mechanical Power Input of")
disp("is needed to overcome the frictional losses in the flow due to viscosity")
