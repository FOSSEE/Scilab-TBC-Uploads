// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 11")
n_carnot=0.5;//efficiency of carnot power cycle
m=0.5;//mass of air in kg
p2=7*10^5;//final pressure in pa
v2=0.12;//volume in m^3
R=287;//gas constant in J/kg K
Q_23=40*1000;//heat transfer to the air during isothermal expansion in J
Cp=1.008;//specific heat at constant pressure in KJ/kg K
Cv=0.721;//specific heat at constant volume in KJ/kg K
disp("let thermodynamic properties be denoted with respect to salient states;")
disp("n_carnot=1-T1/T2")
disp("so T1/T2=1-0.5")
1-0.5
disp("so T1/T2=0.5")
disp("or T2=2*T1")
disp("corresponding to state 2,p2*v2=m*R*T2")
disp("so temperature(T2)=p2*v2/(m*R) in K")
T2=p2*v2/(m*R)
disp("heat transferred during process 2-3(isothermal expansion),Q_23=40 KJ")
disp("Q_23=W_23=p2*v2*log(v3/v2)")
disp("so volume(v3)=v2*exp(Q_23/(p2*v2)) in m^3")
v3=v2*exp(Q_23/(p2*v2))
disp("temperature at state 1,T1=T2/2 in K")
T1=T2/2
disp("during process 1-2,T2/T1=(p2/p1)^((y-1)/y)")
disp("here expansion constant(y)=Cp/Cv")
y=Cp/Cv
disp("so pressure(p1)=p2/(T2/T1)^(y/(y-1)) in pa")
p1=p2/(T2/T1)^(y/(y-1))
disp("p1 in bar")
p1=p1/10^5
disp("thus p1*v1=m*R*T1")
disp("so volume(v1)=m*R*T1/(p1*10^5) in m^3")
v1=m*R*T1/(p1*10^5) 
disp("heat transferred during process 4-1(isothermal compression)shall be equal to the heat transferred during process2-3(isothermal expansion).")
disp("for isentropic process,dQ=0,dW=dU")
disp("during process 1-2,isentropic process,W_12=-m*Cv*(T2-T1)in KJ")
disp("Q_12=0,")
W_12=-m*Cv*(T2-T1)
disp("W_12=-105.51 KJ(-ve work)")
disp("during process 3-4,isentropic process,W_34=-m*Cv*(T4-T3)in KJ")
disp("Q_31=0,")
T4=T1;
T3=T2;
W_34=-m*Cv*(T4-T3)
disp("ANS:")
disp("W_34=+105.51 KJ(+ve work)")
disp("so for process 1-2,heat transfer=0,work interaction=-105.51 KJ")
disp("for process 2-3,heat transfer=40 KJ,work intercation=40 KJ")
disp("for process 3-4,heat transfer=0,work interaction=+105.51 KJ")
disp("for process 4-1,heat transfer=-40 KJ,work interaction=-40 KJ")
disp("maximum temperature of cycle=585.36 KJ")
disp("minimum temperature of cycle=292.68 KJ")
disp("volume at the end of isothermal expansion=0.1932 m^3")














