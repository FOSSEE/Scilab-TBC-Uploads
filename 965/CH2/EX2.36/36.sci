clc;
clear all;
disp("interface temperature calculation")
r1=25;//mm
r2=r1+6.4;//mm
r3=r2+25;//mm
t1=393;// degree K
t3=311;// degree K
kA=0.166;// W/(m*C)
kB=0.0485;// W/(m*C)
Ql=2*3.1416*(t1-t3)/((log (r3/r2))/kB+(log (r2/r1))/kA);
disp("W/m",Ql,"heat transfer per unit length = ")
//Ql=2*3.1416*(t1-t2)/((ln (r2/r1))/kA;
t2=t1-Ql*((log (r2/r1))/kA)/(2*3.146);
disp("degree C",t2-273,"interface temperature between asbestos and fibre glass =")

