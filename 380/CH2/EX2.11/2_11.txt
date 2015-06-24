//Caption:Find (a)Inductance of each coil (b)mutual inductance (c)coefficient of coupling
//Exa:2.11
clc;
clear;
close;
//L1,L2=inductances of coil 1&2
//M=mutual inductance b/w coil 1&2
L_aid=2.38;//effective inductance when connected in sereis aiding
L_opp=1.02;//effective inductance when connected in sereis opposing
//L1+L2+2M=L_aid
//L1+L2-2M=L_opp
M=(L_aid-L_opp)/4;//in henry
disp(M,'mutual inductance (in henry)=')
//L1=16*L2
L1=(L_aid-2*M)/17;//in henry
disp(L1,'inductance of coil-1 (in henry)=')
L2=L_aid-(2*M)-L1;//in henry
disp(L2,'inductance of coil-2 (in henry)=')
k=M/(sqrt(L1*L2));
disp(k,'coefficient of coupling=')