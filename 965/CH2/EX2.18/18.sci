clc;
clear all;
disp("composite wall system")
La=0.12;//m
Aa=1;//m^2
kA= 14.5;//W/(m*C)
RthA=La/(kA*Aa);

La1=0.000025;//m
Aa1=0.15;//m^2
kA1= 14.5;//W/(m*C)
RthA1=La1/(kA1*Aa1);

Lb=0.12;//m
Ab=1;//m^2
kB= 210;//W/(m*C)
RthB=Lb/(kB*Ab);

Lb1=0.000025;//m
Ab1=0.15;//m^2
kB1= 210;//W/(m*C)
RthB1=Lb1/(kB1*Ab1);

Lc=0.000025;//m
Ac=0.7;//m^2
kC=0.032;//W/(m*C)
RthC=Lc/(kC*Ac);

Req=RthA1*RthB1*RthC/(RthA1*RthC+RthB1*RthA1+RthB1*RthC);

Rtotal=RthA+Req+RthB
t1=220;// degree C
t2=30;// degree C
Q=(t1-t2)/Rtotal;
disp ("W",Q,"heat transfer = ")
delT=Q*Req;
disp("degree C",delT,"temperature drop in contact")

