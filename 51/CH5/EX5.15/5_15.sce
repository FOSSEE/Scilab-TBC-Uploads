clc;
clear;
v1=200;//m/s
v2=500;//m/s
A1=1;//m^2
p1=78.5;//kPa(abs)
T1=268;//K
p2=101;//kPa(abs)

//F=-p1*A1 + p2*A2 + m*(v2-v1)
//m=d1*A1*v1
//d1=(p1)/(R*T1)
d1=(p1*1000)/(286.9*T1);
m=d1*v1*A1;
F=-((p1-p2)*A1*1000) + m*(v2-v1);
disp("N",F,"The thrust for which the stand is to be designed=")