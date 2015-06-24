// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 15")
p1=0.5;//initial pressure of air in Mpa
T1=400;//initial temperature of air in K
p2=0.3;//final pressure of air in Mpa
T2=350;//initial temperature of air in K
R=0.287;//gas constant in KJ/kg K
Cp=1.004;//specific heat at constant pressure in KJ/kg K
disp("let the two points be given as states 1 and 2,")
disp("let us assume flow to be from 1 to 2")
disp("so entropy change(deltaS1_2)=s1-s2=Cp*log(T1/T2)-R*log(p1/p2)in KJ/kg K")
deltaS1_2=Cp*log(T1/T2)-R*log(p1/p2)
disp("deltaS1_2=s1-s2=0.01254 KJ/kg K")
disp("it means s2 > s1 hence the assumption that flow is from 1 to 2 is correct as from second law of thermodynamics the entropy increases in a process i.e s2 is greater than or equal to s1")
disp("hence flow occurs from 1 to 2 i.e from 0.5 MPa,400K to 0.3 Mpa & 350 K")
