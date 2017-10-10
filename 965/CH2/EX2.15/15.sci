clc;
clear all;
disp("temperature at interface")
La=0.12;//m
Lb=0.6;//m
//kA=0.25*(1+0.0009*t)
kB=0.8;// W/(m*C)
t1=1250;// degree C
tair=40;// degree C
delT=(t1-tair);
//kAm=0.25*(1+0.0009*(t2+1250)/2)
A=1;// area
//RthA= La/(kAm*A); thermal resistivity of fire clay
RthB= Lb/(kB*A); //thermal resistivity of re4d brick
//heat loss for 1 m^2 furnace wall = Q = delT/(RthA+RthB)=(t2-40)/0.8
//1210/(1/(2.083+0.000937*(1250+t2))+0.75)=(t2-40)/0.8
//0.000703*(t2^2)+2.505*t2-3287.47
t2=(-2.505+(2.505^2+4*0.000703*3287.47)^0.5)/(2*0.000703);
disp ("degree C", t2, "temperature t2 = ")
Q=(t2-40)/RthB;
disp ("W",Q,"heat loss = ")


