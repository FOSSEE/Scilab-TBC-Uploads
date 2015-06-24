//Exa 10.3
clc;
clear;
close;
//Given data :
w=700/1000;//kg/m
L=300;//m
Tmax=3500;//kg

S_T0=w*L^2/8;//,m
//Tmax=T0+w*S
//T0^2-T0*Tmax-w*S_T0=0
polynomial=[1 -Tmax w*S_T0];
T0=roots(polynomial);//kg
T0=T0(1);//+ve sign taken
disp(T0,"Horizontal component of tension in kg is : ");
S=S_T0/T0;//m
disp(S,"Maximum sag in m : ");
y=S/2;//m
x=sqrt(2*y*T0/w);//m
disp(x,"Sag will be half at the point where x coordinate(in m) will be : ");
