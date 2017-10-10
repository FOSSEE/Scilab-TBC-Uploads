clc;
clear all;
disp("temperature between layers")
La=0.22;//m
Lb=0.15;//m
Lc=0.05;//m
Ld=0.003;//m
kA=4;// kJ/(mh*C)
kB=2.8;// kJ/(mh*C)
kC=0.24;// kJ/(mh*C)
kD=240;// kJ/(mh*C)
t1= 1500;// degree C
t5=90;// degree C
RthA=La/kA;//(m^2)*h*C/kJ
RthB=Lb/kB;// (m^2)*h*C/kJ
RthC=Lc/kC;// (m^2)*h*C/kJ
RthD=Ld/kD;// (m^2)*h*C/kJ
Rtotal= RthA+RthB+RthC+RthD;// (m^2)*h*C/kJ
disp ("(m^2)*h*C/kJ",Rtotal,"total thermal resistance is = ")
q= (t1-t5)/Rtotal;// kJ/(h*m^2)
disp("kJ/(h*m^2)",q,"rate of heat loss per unit area of the wall is =")
// q= (t1-t2)/RthA=  (t3-t4)/RthB
t4=t5+q*RthD;// degree C
disp ("degree C",t4,"the temperature t4 is = ")
t3=t4+q*RthC;// degree C
disp ("degree C",t3,"the temperature t3 is = ")
t2=t3+q*RthB;// degree C
disp ("degree C",t2,"the temperature t2 is = ")
