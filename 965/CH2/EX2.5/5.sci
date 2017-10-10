clc;
clear all;
disp("Heat loss rate")
La=0.12;//m
Lb=0.24;//m
kA=1.7;// W/(m*C)
kB=5.8;// W/(m*C)
Rcont=0.0035;// C/W
t1= 725;// degree C
t4=110;// degree C
RthA=La/kA;// C/W
RthB=Lb/kB;// C/W
Rth= RthA+Rcont+RthB;// C/W
q= (t1-t4)/Rth;// W/m^2
disp("W/m^2",q,"rate of heat loss per unit area of the wall is =")
// q= (t1-t2)/RthA=  (t3-t4)/RthB
t2=t1-q*RthA;// degree C
t3=q*RthB+t4;// degree C
disp ("degree C",t2-t3,"the temperature drop is = ")
