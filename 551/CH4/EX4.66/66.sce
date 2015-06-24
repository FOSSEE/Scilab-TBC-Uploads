clc
//For oxygen
cpa=0.88; //kJ/kg K
Ra=0.24; //kJ/kg K
V1a=0.035; //m^3
p1a=4.5; //bar
T1a=333; //K
V2a=0.07; //m^3

//For methane
V1b=0.07; //m^3
V2b=0.035; //m^3
p1b=4.5; //bar
T1b=261; //K
cpb=1.92; //kJ/kg K
Rb=0.496; //kJ/kg K

yb=cpb/(cpb-Rb); //for methane
cva=cpa-Ra; //for oxygen

disp("(i) Final state condition")

p2b=p1b*(V1b/V2b)^yb;
disp("p2 for methane =")
disp(p2b)
disp("bar")

T2b=p2b*V2b*T1b/p1b/V1b;
disp("T2 for methane =")
disp(T2b)
disp("K")

p2a=p2b;

T2a=p2a*V2a/p1a/V1a*T1a;
disp("T2 for oxygen =")
disp(T2a)
disp("K")

Wb=(p1b*V1b - p2b*V2b)/(yb-1)*100; //kJ

disp("(ii) Work done by the piston ")
disp("The piston will be in virtual equilibrium and hence zero work is effected by the piston.")

Wa=-Wb;

ma=p1a*V1a/Ra/T1a*10^2;

Q=ma*cva*(T2a-T1a) + Wa;
disp("(iii) Heat transferred to oxygen =")
disp(Q)
disp("kJ")