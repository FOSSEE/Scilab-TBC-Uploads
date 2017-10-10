clc;
clear all;
disp ("(i)When the layers are glued")
A=1
kA=0.12;//W/(m*C)
kB=0.02;//W/(m*C)
kC=0.12;//c
La=0.02;//m
RthA=La/(kA*A);
Lb=0.1;//m
RthB=Lb/(kB*A);
Lc=0.02;//m
RthC=Lc/(kC*A);
t1=35;// degree C
t4=20;// degree C
Rtotal=RthA+RthB+RthC;
q=(t1-t4)/Rtotal;//W/m^2
disp ("W/m^2",q,"heat flow per m^2 area = ")
disp ("(ii)When the layers are joined by steel bolts")
n=4;// number of bolts
dB=0.01 ;//m diameter of bolt
A=3.14*(dB^2)/4;// m^2
kD=40;//W/(m*C)
RthD=(La+Lb+Lc)/(kD*A);// C/W
Rtotal=(RthA+RthB+RthC)*RthD/(4*(RthA+RthB+RthC)+RthD);
q=(t1-t4)/Rtotal;//W/m^2
disp ("W/m^2",q,"heat flow per m^2 area = ")






