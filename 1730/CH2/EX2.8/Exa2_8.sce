//Exa2.8
clc;
clear;
close;
//given data :
//Diameter of copper wire
d=2;//in milimeter
d=.002;//in meter
//conductivity of copper
nita=5.8*10^7;//in second per meter
//Electron mobility
miu_e=.0032;//in meter square per volt-second
//Applied electric field
E=20;//in mV/m
E=.02; //in V/m
e=1.6*10^-19;
//(i) From eq. (2.13)
//charge density
n=nita/(e*miu_e);//in per meter cube
disp("(i) Charge density is : "+string(n)+" /meter cube");
//(ii) from eq. (2.9)
//current density
J=nita*E;// in A/m^2
disp("(ii) Current density is : "+string(J)+" A/m^2");
//(iii) Current flowing in the wire I=J* Area of x-section of wire
// Area of x-section of wire= (%pi*d^2)/4
I=(J*%pi*d^2)/4;
disp("(iii) Current flowing in the wire is : "+string(I)+" A");
//(iv) form eq.2.14
//Electron drift velocity
v=miu_e*E;
disp("(iv) Electron drift velocity is :"+string(v)+" m/s");
