// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 10")
n=500;//total number of persons
q=50;//heat requirement per person in kcal/hr
h1=80;//enthalpy of hot water enter in pipe in kcal/kg
h2=45;//enthalpy of hot water leaves the pipe in kcal/kg
g=9.81;//acceleartion due to gravity in m/s^2
deltaz=10;//difference in elevation of inlet and exit pipe in m
disp("above problem can be solved using steady flow energy equations upon hot water flow")
disp("Q+m1*(h1+C1^2/2+g*z1)=W+m2*(h2+C2^2/2+g*z2)")
disp("here total heat to be supplied(Q)in kcal/hr")
Q=n*q
disp("so heat lost by water(-ve),Q=-25000 kcal/hr")
Q=-25000//heat loss by water in kcal/hr
disp("there shall be no work interaction and change in kinetic energy,so,steady flow energy equation shall be,")
disp("Q+m*(h1+g*z1)=m*(h2+g*z2)")
disp("so water circulation rate(m)in kg/hr")
disp("so m=Q*10^3*4.18/(g*deltaz-(h1-h2)*10^3*4.18")
m=Q*10^3*4.18/(g*deltaz-(h1-h2)*10^3*4.18)
disp("water circulation rate(m)in kg/min")
m=m/60
