//Example 3.31: Capacitance, power loss, loss resistance and loss angle
clc;
clear;
close;
//given data :
r2=1500/%pi;// in ohm
r3=120;// in ohm
C2=0.95*10^-6;//F
C1=50*10^-12;// F
Cs=round(C1*r2*10^12/r3);
f=50;
w=round(2*%pi*f);
disp(Cs," Cable caacitance,Cs(PF) = ")
rs=(r3/(w^2*C1*10));
disp(rs*10^-6,"Parallel loss resistance,rs(M-ohm) = ")
del=atand(100*%pi*C2*r2);//
disp(del,"loss angle is,(degree)=")
v=100;//kV
pl=(v*10^3)^2;//
disp(pl,"power loss is,=")
