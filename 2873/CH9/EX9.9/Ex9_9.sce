// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 9")
y=1.4;//expansion constant
n_poly_c=0.85;//ploytropic efficiency of compressor
n_poly_T=0.90;//ploytropic efficiency of Turbine
r=8;//compression ratio
T1=(27+273);//temperature of air in compressor in K
T3=1100;//temperature of air leaving combustion chamber in K
epsilon=0.8;//effectiveness of heat exchanger
Cp=1.0032;//specific heat at constant pressure in KJ/kg K
disp("using polytropic efficiency the index of compression and expansion can be obtained as under,")
disp("let compression index be nc,")
disp("(nc-1)/nc=(y-1)/(y*n_poly_c)")
disp("so nc=1/(1-((y-1)/(y*n_poly_c)))")
nc=1/(1-((y-1)/(y*n_poly_c)))
disp("let expansion index be nt,")
disp("(nt-1)/nt=(n_poly_T*(y-1))/y")
disp("so nt=1/(1-((n_poly_T*(y-1))/y))")
nt=1/(1-((n_poly_T*(y-1))/y))
disp("For process 1-2")
disp("T2/T1=(p2/p1)^((nc-1)/nc)")
disp("so T2=T1*(p2/p1)^((nc-1)/nc)in K")
T2=T1*(r)^((nc-1)/nc)
disp("also T4/T3=(p4/p3)^((nt-1)/nt)")
disp("so T4=T3*(p4/p3)^((nt-1)/nt)in K")
T4=T3*(1/r)^((nt-1)/nt)
disp("using heat exchanger effectivenesss,") 
disp("epsilon=(T5-T2)/(T4-T2)")
disp("so T5=T2+(epsilon*(T4-T2))in K")
T5=T2+(epsilon*(T4-T2))
disp("heat added in combustion chamber,q_add=Cp*(T3-T5)in KJ/kg")
q_add=Cp*(T3-T5)
disp("compressor work,Wc=Cp*(T2-T1)in ")
Wc=Cp*(T2-T1)
disp("turbine work,Wt=Cp*(T3-T4)in KJ/kg")
Wt=Cp*(T3-T4)
disp("cycle efficiency=(Wt-Wc)/q_add")
(Wt-Wc)/q_add
disp("in percentage")
(Wt-Wc)*100/q_add
disp("work ratio,(Wt-Wc)/Wt")
(Wt-Wc)/Wt
disp("specific work output=Wt-Wc in KJ/kg")
Wt-Wc
disp("so cycle efficiency=32.79%,work ratio=0.334,specific work output=152.56 KJ/kg")









