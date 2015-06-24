// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 16")
T1=(27+273);//temperature at begining of compression in K
k=70;//ration of maximum to minimum pressures
r=15;//compression ratio
y=1.4;//expansion constant
disp("here P4/P1=P3/P1=70............eq1")
disp("compression ratio,V1/V2=V1/V3=15.............eq2")
disp("heat added at constant volume= heat added at constant pressure")
disp("Q23=Q34")
disp("m*Cv*(T3-T2)=m*Cp*(T4-T3)")
disp("(T3-T2)=y*(T4-T3)")
disp("for process 1-2;")
disp("T2/T1=(P2/P1)^((y-1)/y)")
disp("T2/T1=(V1/V2)^(y-1)")
disp("so T2=T1*(V1/V2)^(y-1) in K")
T2=T1*(r)^(y-1)
disp("and (P2/P1)=(V1/V2)^y")
disp("so P2=P1*(V1/V2)^y in Pa...........eq3")
disp("for process 2-3,")
disp("P2/P3=T2/T3")
disp("so T3=T2*P3/P2")
disp("using eq 1 and 3,we get")
disp("T3=T2*k/r^y in K")
T3=T2*k/r^y 
disp("using equal heat additions for processes 2-3 and 3-4,")
disp("(T3-T2)=y*(T4-T3)")
disp("so T4=T3+((T3-T2)/y) in K")
T4=T3+((T3-T2)/y)
disp("for process 3-4,")
disp("V3/V4=T3/T4")
disp("(V3/V1)*(V1/V4)=T3/T4")
disp("so (V1/V4)=(T3/T4)*r")
(T3/T4)*r
disp("so V1/V4=11.88 and V5/V4=11.88")
disp("for process 4-5,")
disp("P4/P5=(V5/V4)^y,or T4/T5=(V5/V4)^(y-1)")
disp("so T5=T4/((V5/V4)^(y-1))")
T5=T4/(11.88)^(y-1)
disp("air standard thermal efficiency(n)=1-(heat rejected/heat added)")
disp("n=1-(m*Cv*(T5-T1)/(m*Cp*(T4-T3)+m*Cv*(T3-T2)))")
disp("n=1-((T5-T1)/(y*(T4-T3)+(T3-T2)))")
n=1-((T5-T1)/(y*(T4-T3)+(T3-T2)))
disp("air standard thermal efficiency=0.6529")
disp("in percentage")
n=n*100
disp("so air standard thermal efficiency=65.29%")
disp("Actual thermal efficiency may be different from theoretical efficiency due to following reasons")
disp("a> Air standard cycle analysis considers air as the working fluid while in actual cycle it is not air throughtout the cycle.Actual working fluid which are combustion products do not behave as perfect gas.")
disp("b> Heat addition does not occur isochorically in actual process.Also combustion is accompanied by inefficiency such as incomplete combustion,dissociation of combustion products,etc.")
disp("c> Specific heat variation occurs in actual processes where as in air standard cycle analysis specific heat variation neglected.Also during adiabatic process theoretically no heat loss occur while actually these processes are accompanied by heat losses.")














