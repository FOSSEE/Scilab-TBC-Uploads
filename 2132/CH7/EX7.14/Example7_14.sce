////Example 7.14
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity constant
slope=1/125;//slope
hA=12;//meter(level of water in reservoir A)
hB=1.5;//meter(level of water in reservoir B)
L1=500;//meter
D1=250/1000;//meter
L2=1000;//meter
D2=200/1000;//meter
L3=500;//meter
D3=150/1000;//meter
f=0.02;//coeff. of friction
fall_level=(L1+L2+L3)*slope;//meter
H=hA+fall_level-hB;//meter(Head available for flow)
v2BYv1=(D1/D2)^2;
v3BYv1=(D1/D3)^2;
//H=hf=hf1+hf2+hf3
//H=(4*f*L1*v1^2/(2*g*D1)+4*f*L2*v2^2/(2*g*D2)+4*f*L3*v3^2/(2*g*D3))
v1=sqrt(H/(4*f*L1/(2*g*D1)+4*f*L2*v2BYv1^2/(2*g*D2)+4*f*L3*v3BYv1^2/(2*g*D3)));//m/s
Q=%pi*D1^2/4*v1;//m^3/sec
Q=Q*1000;//litres/sec
disp(Q,"Discharge in pipe line in litres/sec : ");
