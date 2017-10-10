clc;
clear all;
disp("required tube length")
ti=60;// degree C
d=1/100;//m diameter of tube
ta=40;//degree C
t=45;//degree C
rho=865;//kg/m^3
k=0.14;// W/m.K
cp=1780;//J/kg.C
U=3;//m/s
Nu=3.657
Af=%pi*d^2/4;// m^2 flow area
m=rho*Af*U;
Q=m*cp*(ti-t);
h=Nu*k/d;// W/m^2.K
t1=ti-ta;
t2=t-ta;
tm=(t1-t2)/log(t1/t2);// degree C
//A=%pi*d*L
L=Q/(h*%pi*d*tm);
disp("m",L,"Required tube length is L =")
