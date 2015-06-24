//Example 2.5://torque
clc;
clear;
close;
d=2.5;//diameter in cm
n=500;//turns
b=1.1;//mWb/m^2
v=100;//volts
pf=0.7;//power factor
rp=2000;//ohms
x=((%pi*(d*10^-2)^2*n*b*10^-3*v*pf)/(4*rp));//
ang1=45;//degree
ang2=90;//degree
td1=x*sind(ang1);//
disp(td1,"torque in Nm when angle is 45 degree")
td2=x*sind(ang2);//
disp(td2,"torque in Nm when angle is 90 degree")
