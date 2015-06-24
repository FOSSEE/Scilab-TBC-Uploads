// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 17")
To=(27+273);//temperature of surrounding in K
T1=(60+273);//initial temperature of air in K
P1=1.5*10^5;//initial pressure of air in pa
P2=2.5*10^5;//final pressure of air in pa
T_reservoir=(400+273);//temperature of reservoir in K
Cp=1.005;//specific heat at constant pressure in KJ/kg K
disp("loss of available energy=irreversibility=To*deltaSc")
disp("deltaSc=deltaSs+deltaSe")
disp("change in entropy of system=deltaSs")
disp("change in entropy of environment/surroundings=deltaSe")
disp("here heat addition process causing rise in pressure from 1.5 bar to 2.5 bar occurs isochorically.let initial and final states be given by subscript 1 and 2")
disp("P1/T1=P2/T2")
disp("so T2=P2*T1/P1 in K")
T2=P2*T1/P1
disp("heat addition to air in tank")
disp("Q=m*Cp*deltaT in KJ/kg")
deltaT=T2-T1;
Q=Cp*deltaT
disp("deltaSs=Q/T1 in KJ/kg K")
deltaSs=Q/T1
disp("deltaSe=-Q/T_reservoir in KJ/kg K")
deltaSe=-Q/T_reservoir
disp("and deltaSc=deltaSs+deltaSe in KJ/kg K")
deltaSc=deltaSs+deltaSe
disp("so loss of available energy(E)in KJ/kg")
E=To*deltaSc
