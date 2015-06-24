// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 13")
T2=700;//highest temperature of stirling engine in K
T1=300;//lowest temperature of stirling engine in K
r=3;//compression ratio
q_add=30;//heat addition in KJ/s
epsilon=0.9;//regenerator efficiency
P=1*10^5;//pressure at begining of compression in Pa
n=100;//number of cycle per minute
Cv=0.72;//specific heat at constant volume in KJ/kg K
R=29.27;//gas constant in KJ/kg K
disp("work done per kg of air,W=R*(T2-T1)*log(r) in KJ/kg")
W=R*(T2-T1)*log(r)
disp("heat added per kg of air,q=R*T2*log(r)+(1-epsilon)*Cv*(T2-T1) in KJ/kg")
q=R*T2*log(r)+(1-epsilon)*Cv*(T2-T1)
disp("for 30 KJ/s heat supplied,the mass of air/s(m)=q_add/q in kg/s")
m=q_add/q
disp("mass of air per cycle=m/n in kg/cycle")
m/n
disp("brake output=W*m in KW")
W*m
disp("stroke volume,V=m*R*T/P in m^3")
m=1.33*10^-4;//mass of air per cycle in kg/cycle
T=T1;
V=m*R*T*1000/P
disp("brake output=17.11 KW")
disp("stroke volume=0.0116 m^3")



