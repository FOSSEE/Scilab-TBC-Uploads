// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);1
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 13")
T2=(77+273);//temperature of reservoir 2
T1=(1077+273);//temperature of reservoir 1
T3=(3+273);//temperature of reservoir 3
disp("arrangement for heat pump and heat engine operating togrther is shown here.engine and pump both reject heat to reservoir at 77 degree celcius(350 K)")
disp("for heat engine")
disp("ne=W/Q1=1-T2/T1")
disp("so (Q1-Q2)/Q1=")
1-T2/T1
disp("and Q2/Q1=")
1-0.7407
disp("Q2=0.2593*Q1")
disp("for heat pump,")
disp("COP_HP=Q4/(Q4-Q3)=T4/(T4-T3)")
T4=T2;
T4/(T4-T3)
disp("Q4/Q3=")
4.73/3.73
disp("Q4=1.27*Q3")
disp("work output from engine =work input to pump")
disp("Q1-Q2=Q4-Q3=>Q1-0.2593*Q1=Q4-Q4/1.27")
disp("so Q4/Q1=")
(1-0.2593)/(1-(1/1.27))
disp("so Q4=3.484*Q1")
disp("also it is given that Q2+Q4=100")
disp("subtituting Q2 and Q4 as function of Q1 in following expression,")
disp("Q2+Q4=100")
disp("so 0.2539*Q1+3.484*Q1=100")
disp("so energy taken by engine from reservoir at 1077 degree celcius(Q1)in KJ")
disp("Q1=100/(0.2539+3.484)in KJ")
Q1=100/(0.2539+3.484)
disp("NOTE=>In this question expression for calculating Q1 is written wrong in book which is corrected above.")
