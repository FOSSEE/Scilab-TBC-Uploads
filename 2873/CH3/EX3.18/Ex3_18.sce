// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 18")
p1=0.5*10^6;//initial pressure of air in pa
p2=1.013*10^5;//atmospheric pressure in pa
v1=2;//initial volume of air in m^3
v2=v1;//final volume of air in m^3
T1=375;//initial temperature of air in K
Cp_air=1.003;//specific heat at consatnt pressure in KJ/kg K
Cv_air=0.716;//specific heat at consatnt volume in KJ/kg K
R_air=0.287;//gas constant in KJ/kg K
y=1.4;//expansion constant for air
disp("let initial states and final states of air inside cylinder be given by m1,p1,v1,,T1 and m2,p2,v2,T2 respectively.it is case of emptying of cylinder")
disp("initial mass of air(m1)in kg")
disp("m1=(p1*v1)/(R_air*1000*T1)")
m1=(p1*v1)/(R_air*1000*T1)
disp("for adiabatic expansion during release of air through valve from 0.5 Mpa to atmospheric pressure")
disp("T2=T1*(p2/p1)^((y-1)/y)in K")
T2=T1*(p2/p1)^((y-1)/y)
disp("final mass of air left in tank(m2)in kg")
disp("m2=(p2*v2)/(R_air*1000*T2)")
m2=(p2*v2)/(R_air*1000*T2)
disp("writing down energy equation for unsteady flow system")
disp("(m1-m2)*(h2+C^2/2)=(m1*u1-m2*u2)")
disp("or (m1-m2)*C^2/2=(m1*u1-m2*u2)-(m1-m2)*h2")
disp("kinetic energy available for running turbine(W)in KJ")
disp("W=(m1*u1-m2*u2)-(m1-m2)*h2=(m1*Cv_air*1000*T1-m2*Cv_air*1000*T2)-(m1-m2)*Cp_air*1000*T2")
disp("W=(m1*Cv_air*1000*T1-m2*Cv_air*1000*T2)-(m1-m2)*Cp_air*1000*T2")
W=((m1*Cv_air*1000*T1-m2*Cv_air*1000*T2)-(m1-m2)*Cp_air*1000*T2)/1000
disp("amount of work available=482.66 KJ")
