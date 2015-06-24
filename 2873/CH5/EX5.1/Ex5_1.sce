// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 1")
p1=5;//initial pressure of air
T1=(27+273);//temperature of air in K
p2=2;//final pressure of air in K
R=0.287;//gas constant in KJ/kg K
Cp_air=1.004;//specific heat of air at constant pressure in KJ/kg K
disp("entropy change may be given as,")
disp("s2-s1=((Cp_air*log(T2/T1)-(R*log(p2/p1))")
disp("here for throttling process h1=h2=>Cp_air*T1=Cp_air*T2=>T1=T2")
disp("so change in entropy(deltaS)in KJ/kg K")
disp("deltaS=(Cp_air*log(1))-(R*log(p2/p1))")
deltaS=(Cp_air*log(1))-(R*log(p2/p1))
