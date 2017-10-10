clc;
clear all;
disp("heat loss per meter")
r1=150/2;//mm inner radius of a steam pipe
r2=160/2;//mm layer 1 radius of a steam pipe
r3=r2+30;// mm layer 2 radius of steam pipe
r4=r3+50;// mm outer radius of pipe
t1=320;// degree C
t4=40;// degree C
kA=58;//W/(m*C)
kB=0.18;//W/(m*C)
kC=0.09;//W/(m*C)

Q=2*3.1416*(t1-t4)/(log (r2/r1)/kA+log (r3/r2)/kB+log (r4/r3)/kC);
disp("W",Q,"heat lost per meter =")

//Q=2*3.1416*(t1-t2)/(log (r2/r1)/kA);
X=2*3.1416/(log (r2/r1)/kA);
t2=t1-Q/X;
disp("degree C",t2,"temperature t2 =")

//Q=2*3.1416*(t2-t3)/(log (r3/r2)/kB);
X=2*3.1416/(log (r3/r2)/kB);
t3=t2-Q/X;
disp("degree C",t3,"temperature t3 =")

hsteam=2703;//kJ/kg total heat pf steam when it is saturated at 320 degree C
m=0.32;//kg/min
Qsteam=m*hsteam-Q*60/1000;// kJ/min
disp("kJ/min",Qsteam,"steam carried by steam per minute after losing heat in the pipe = ")

//Qsteam=m*(hf+x*hfg)
hf=1463;//kJ/kg
hfg=1240;//kJ/kg
x=((Qsteam/m)-hf)/hfg;
disp(x,"amount of steam coming out of one meter pipe =")

