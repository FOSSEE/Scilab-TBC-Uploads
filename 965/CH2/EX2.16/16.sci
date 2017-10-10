clc;
clear all;
disp("heat flow rate")
La=0.03;//m
Aa=0.1*0.1;//m^2
kA= 150;//W/(m*C)
RthA=La/(kA*Aa);
Lb=0.08;//m
Ab=0.1*0.03;//m^2
kB= 30;//W/(m*C)
RthB=Lb/(kB*Ab);
Lc=0.08;//m
Ac=0.1*0.07;//m^2
kC= 65;//W/(m*C)
RthC=Lc/(kC*Ac);
Ld=0.05;//m
Ad=0.1*0.1;//m^2
kD= 50;//W/(m*C) 
RthD=Ld/(kD*Ad);
Req=RthB*RthC/(RthB+RthC);
Rtotal=RthA+Req+RthD
t1=400;// degree C
t2=60;// degree C
Q=(t1-t2)/Rtotal;
disp ("W",Q,"heat transfer = ")

