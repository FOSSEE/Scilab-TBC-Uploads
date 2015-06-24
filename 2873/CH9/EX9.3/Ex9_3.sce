// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 3")
T1=(100+273.15);//temperature at beginning of compresssion in K
P1=103;//pressure at beginning of compresssion in KPa
Cp=1.003;//specific heat at constant pressure in KJ/kg K
Cv=0.71;//specific heat at constant volume in KJ/kg K
Q23=1700;//heat added during combustion in KJ/kg
P3=5000;//maximum pressure in cylinder in KPa
disp("1-2-3-4=cycle a")
disp("1-2_a-3_a-4_a-5=cycle b")
disp("here Cp/Cv=y")
y=Cp/Cv
y=1.4;//approx.
disp("and R=0.293 KJ/kg K")
R=0.293;
disp("let us consider 1 kg of air for perfect gas,")
m=1;//mass of air in kg
disp("P*V=m*R*T")
disp("so V1=m*R*T1/P1 in m^3")
V1=m*R*T1/P1
disp("at state 3,")
disp("P3*V3=m*R*T3")
disp("so T3/V2=P3/(m*R)")
P3/(m*R)
disp("so T3=17064.8*V2............eq1")
disp("for cycle a and also for cycle b")
disp("T3_a=17064.8*V2_a.............eq2")
disp("a> for otto cycle,")
disp("Q23=Cv*(T3-T2)")
disp("so T3-T2=Q23/Cv")
Q23/Cv
disp("and T2=T3-2394.36.............eq3")
disp("from gas law,P2*V2/T2=P3*V3/T3")
disp("here V2=V3 and using eq 3,we get")
disp("so P2/(T3-2394.36)=5000/T3")
disp("substituting T3 as function of V2")
disp("P2/(17064.8*V2-2394.36)=5000/(17064.8*V2)")
disp("P2=5000*(17064.8*V2-2394.36)/(17064.8*V2)")
disp("also P1*V1^y=P2*V2^y")
disp("or 103*(1.06)^1.4=(5000*(17064.8*V2-2394.36)/(17064.8*V2))*V2^1.4")
disp("upon solving it yields")
disp("381.4*V2=17064.8*V2^2.4-2394.36*V2^1.4")
disp("or V2^1.4-0.140*V2^0.4-.022=0")
disp("by hit and trial it yields,V2=0.18 ")
V2=0.18;
disp("thus compression ratio,r=V1/V2")
r=V1/V2
disp("otto cycle efficiency,n_otto=1-(1/r)^(y-1)")
n_otto=1-(1/r)^(y-1)
disp("in percentage")
n_otto=n_otto*100
disp("b> for mixed or dual cycle")
disp("Cp*(T4_a-T3_a)=Cv*(T3_a-T2_a)=1700/2=850")
disp("or T3_a-T2_a=850/Cv")
850/Cv
disp("or T2_a=T3_a-1197.2 .............eq4 ")
disp("also P2_a*V2_a/T2_a=P3_a*V3_a/T3_a")
disp("P2_a*V2_a/(T3_a-1197.2)=5000*V2_a/T3_a")
disp("or P2_a/(T3_a-1197.2)=5000/T3_a")
disp("also we had seen earlier that T3_a=17064.8*V2_a")
disp("so P2_a/(17064.8*V2_a-1197.2)=5000/(17064.8*V2_a)")
disp("so P2_a=5000*(17064.8*V2_a-1197.2)/(17064.8*V2_a).....................eq5")
disp("or for adiabatic process,1-2_a")
disp("P1*V1^y=P2*V2^y")
disp("so 1.3*(1.06)^1.4=V2_a^1.4*(5000-(359.78/V2_a))")
disp("or V2_a^1.4-0.07*V2_a^0.4-0.022=0")
disp("by hit and trial ")
disp("V2_a=0.122 m^3")
V2_a=0.122;
disp("therefore upon substituting V2_a,")
disp("by eq 5,P2_a in KPa")
P2_a=5000*(17064.8*V2_a-1197.2)/(17064.8*V2_a)
disp("by eq 2,T3_a in K")
T3_a=17064.8*V2_a
disp("by eq 4,T2_a in K")
T2_a=T3_a-1197.2
disp("from constant pressure heat addition")
disp("Cp*(T4_a-T3_a)=850")
disp("so T4_a=T3_a+(850/Cp) in K")
T4_a=T3_a+(850/Cp)
disp("also P4_a*V4_a/T4_a= P3_a*V3_a/T3_a")
disp("so V4_a=P3_a*V3_a*T4_a/(T3_a*P4_a) in m^3 ")
disp("here P3_a=P4_a and V2_a=V3_a")
V4_a=V2_a*T4_a/(T3_a)
disp("using adiabatic formulations V4_a=0.172 m^3")
disp("(V5/V4_a)^(y-1)=(T4_a/T5),here V5=V1")
V5=V1;
disp("so T5=T4_a/(V5/V4_a)^(y-1) in K")
T5=T4_a/(V5/V4_a)^(y-1)
disp("heat rejected in process 5-1,Q51=Cv*(T5-T1) in KJ")
Q51=Cv*(T5-T1)
disp("efficiency of mixed cycle(n_mixed)=(Q23-Q51)/Q23")
n_mixed=(Q23-Q51)/Q23
disp("in percentage")
n_mixed=n_mixed*100
("NOTE=>In this question temperature difference (T3-T2) for part a> in book is calculated wrong i.e 2328.77,which is corrected above and comes to be 2394.36,however it doesnt effect the efficiency of any part of this question.")






