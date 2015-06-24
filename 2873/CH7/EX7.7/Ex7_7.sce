// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 7")
m=10;//mass of water in kg
C1=25;//initial velocity in m/s
C2=10;//final velocity in m/s
Po=0.1*1000;//environmental pressure in Kpa
To=(25+273.15);//environmental temperature in K
g=9.8;//acceleration due to gravity in m/s^2
z1=10;//initial elevation in m
z2=3;//final elevation in m
disp("let us consider velocities and elevations to be given in reference to environment.Availability is given by")
disp("A=m*((u-uo)+Po*(v-vo)-To(s-so)+C^2/2+g*z)")
disp("dead state of water,from steam tables,uo=104.88 KJ/kg,vo=1.003*10^-3 m^3/kg,so=0.3674 KJ/kg K")
uo=104.88;
vo=1.003*10^-3;
so=0.3674;
disp("for initial state of saturated vapour at 150 degree celcius")
disp("from steam tables,u1=2559.5 KJ/kg,v1=0.3928 m^3/kg,s1=6.8379 KJ/kg K")
u1=2559.5;
v1=0.3928;
s1=6.8379;
disp("for final state of saturated liquid at 20 degree celcius")
disp("from steam tables,u2=83.95 KJ/kg,v2=0.001002 m^3/kg,s2=0.2966 KJ/kg K")
u2=83.95;
v2=0.001002;
s2=0.2966;
disp("substituting in the expression for availability")
disp("initial state availability,A1 in KJ")
disp("A1=m*((u1-uo)+Po*(v1-vo)-To*(s1-so)+C1^2*10^-3/2+g*z1*10^-3)")
A1=m*((u1-uo)+Po*(v1-vo)-To*(s1-so)+C1^2*10^-3/2+g*z1*10^-3)
disp("final state availability,A2 in KJ")
disp("A2=m*((u2-uo)+Po*(v2-vo)-To*(s2-so)+C2^2*10^-3/2+g*z2*10^-3)")
A2=m*((u2-uo)+Po*(v2-vo)-To*(s2-so)+C2^2*10^-3/2+g*z2*10^-3)
disp("change in availability,deltaA=A2-A1 in KJ")
deltaA=A2-A1
disp("so initial availability =5650.28 KJ")
disp("final availability=2.58 KJ ")
disp("change in availability=decrease by 5647.70 KJ ")

