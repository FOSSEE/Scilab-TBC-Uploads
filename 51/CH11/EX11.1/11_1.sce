clc;
clear;
D=4;//in
T1=540;//degree R
p1=100;//psia
T2=453;//degree R
p2=18.4;//psia
k=1.4;
R=1716/32.174;//ft*lb/(lbm*(degree R))
cv=R/(k-1);//ft*lb/(lbm*(degree R))
udiff=cv*(T2-T1);//ft*lb/lbm; change in internal energy
disp("ft*lb/lbm",udiff,"a)The change in internal energy between (1) and (2)=")
cp=k*cv;//ft*lb/(lbm*(degree R))
hdiff=cp*(T2-T1);//ft*lb/lbm; change in enthalpy
disp("ft*lb/lbm",hdiff,"b)The  change in enthalpl energy between (1) and (2)=")
ddiff=(1/R)*((p2*144/T2)-(p1*144/T1));//lbm/(ft^3); change in density
disp("lbm/(ft^3)",ddiff,"The change in density betwenn (1) and (2)=")
