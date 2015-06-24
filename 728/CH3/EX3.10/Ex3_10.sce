//Caption:Calculate the charcterstic impedance & phase velocity
//Exa:3.10
clc;
clear;
close;
e=2.718;
f=1000;//in Hz
l=10000;//in meters
Z_sc=(2631+%i*1289);//in ohms
Z_oc=(221-%i*137);//in ohms
Z_o=[Z_sc*Z_oc]^0.5;
Z_mag=[real(Z_o)^2+imag(Z_o)^2]^0.5;
Z_ang=[atan((imag(Z_o))/real(Z_o))]*180/%pi;
disp(Z_mag,"Characteristic impedance (in ohms) =");
disp(Z_ang,"Angle (in degrees) =");
x=[(Z_oc/Z_sc)^0.5];
//x=tanh(v*l)
//As, tanh(t)=[e^t-e^-t]/[e^t+e^-t]
v=(261+%i*2988)/l;
a=real(v);
b=imag(v);
disp(2*%pi*f/b,"Phase velocity (in meter per sec.) =");