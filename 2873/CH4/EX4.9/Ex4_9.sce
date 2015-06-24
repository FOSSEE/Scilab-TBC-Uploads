// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 9")
T1=1100;//temperature of high temperature reservoir in K
T4=300;//temperature of low temperature reservoir in K
disp("here W1:W2:W3=3:2:1")
disp("efficiency of engine,HE1,")
disp("W1/Q1=(1-(T2/1100))")
disp("so Q1=(1100*W1)/(1100-T2)")
disp("for HE2 engine,W2/Q2=(1-(T3/T2))")
disp("for HE3 engine,W3/Q3=(1-(300/T3))")
disp("from energy balance on engine,HE1")
disp("Q1=W1+Q2=>Q2=Q1-W1")
disp("above gives,Q1=(((1100*W1)/(1100-T2))-W1)=W1*(T2/(1100-T2))")
disp("substituting Q2 in efficiency of HE2")
disp("W2/(W1*(T2/(1100-T2)))=1-(T3/T2)")
disp("W2/W1=(T2/(1100-T2))*(T2-T3)/T2=((T2-T3)/(1100-T2))")
disp("2/3=(T2-T3)/(1100-T2)")
disp("2200-2*T2=3*T2-3*T3")
disp("5*T2-3*T3=2200")
disp("now energy balance on engine HE2 gives,Q2=W2+Q3")
disp("substituting in efficiency of HE2,")
disp("W2/(W2+Q3)=(T2-T3)/T2")
disp("W2*T2=(W2+Q3)*(T2-T3)")
disp("Q3=(W2*T3)/(T2-T3)")
disp("substituting Q3 in efficiency of HE3,")
disp("W3/((W2*T3)/(T2-T3))=(T3-300)/T3")
disp("W3/W2=(T3/(T2-T3))*(T3-300)/T3")
disp("1/2=(T3-300)/(T2-T3)")
disp("3*T3-T2=600")
disp("solving equations of T2 and T3,")
disp("we get,T3=(600+(2200/5))/(3-(3/5))in K")
T3=(600+(2200/5))/(3-(3/5))
disp("and by eq 5,T2 in K")
T2=(2200+3*T3)/5
disp("so intermediate temperature are 700 K and 433.33 K")
