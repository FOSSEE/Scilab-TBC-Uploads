//Example 3.36:deflection of galvanometer and the sensivity
clc;
clear;
close;
P=1000;//ohms
Q=100;//ohms
S=200;//ohms
R1=((P/Q)*S);//ohms
R=2005;//ohms
dr=R-R1;//ohms
e=5;//volts
eo=e*((R/(R+S))-(P/(P+Q)));//volts
ro=(((R*S)/(R+S))+((P*Q)/(P+Q)));//ohms
G=100;//ohms
ig=eo/(ro+G);//amperes
si=10;//mm/micro-ampere
th=si*(ig*10^6);//mm
sb=th/dr;//mm/ohm
disp(th,"deflection of the galvanometer is,(mm)=")
disp(sb,"sensivity of bridge is,(mm/ohm)=")
