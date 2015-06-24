// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 4")
m=5;//mass of steam in kg
z1=10;//initial elevation in m
V1=25;//initial velocity of steam in m/s
z2=2;//final elevation in m
V2=10;//final velocity of steam in m/s
Po=100;//environmental pressure in Kpa
To=(25+273);//environmental temperature in K
g=9.81;//acceleration due to gravity in m/s^2
disp("for dead state of water,")
disp("from steam tables,uo=104.86 KJ/kg,vo=1.0029*10^-3 m^3/kg,so=0.3673 KJ/kg K")
uo=104.86;
vo=1.0029*10^-3;
so=0.3673;
disp("for initial state of water,")
disp("from steam tables,u1=2550 KJ/kg,v1=0.5089 m^3/kg,s1=6.93 KJ/kg K")
u1=2550;
v1=0.5089;
s1=6.93;
disp("for final state of water,")
disp("from steam tables,u2=83.94 KJ/kg,v2=1.0018*10^-3 m^3/kg,s2=0.2966 KJ/kg K")
u2=83.94;
v2=1.0018*10^-3;
s2=0.2966;
disp("availability at any state can be given by")
disp("A=m*((u-uo)+Po*(v-vo)-To*(s-so)+V^2/2+g*z)")
disp("so availability at initial state,A1 in KJ")
disp("A1=m*((u1-uo)+Po*(v1-vo)-To*(s1-so)+V1^2*10^-3/2+g*z1*10^-3)")
A1=m*((u1-uo)+Po*(v1-vo)-To*(s1-so)+V1^2*10^-3/2+g*z1*10^-3)
disp("and availability at final state,A2 in KJ")
disp("A2=m*((u2-uo)+Po*(v2-vo)-To*(s2-so)+V2^2*10^-3/2+g*z2*10^-3)")
A2=m*((u2-uo)+Po*(v2-vo)-To*(s2-so)+V2^2*10^-3/2+g*z2*10^-3)
disp("change in availability,A2-A1 in KJ")
A2-A1
disp("hence availability decreases by 2702.188 KJ")
disp("NOTE=>In this question,due to large calculations,answers are approximately correct.")
