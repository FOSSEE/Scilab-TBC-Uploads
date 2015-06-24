// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 15")
T1=(500+273);//temperature of source in K
T2=(200+273);//temperature of sink in K
T3=(450+273);//temperature of body in K
disp("let the output of heat engine be W.so W/3 is consumed for driving auxiliary and remaining 2*W/3 is consumed for driving heat pump for heat engine,")
disp("n=W/Q1=1-(T2/T1)")
n=1-(T2/T1)
disp("so n=W/Q1=0.3881")
disp("COP of heat pump=T3/(T3-T2)=Q3/(2*W/3)")
COP=T3/(T3-T2)
disp("so 2.892=3*Q3/2*W")
disp("Q3/Q1=")
2*COP*n/3
disp("so ratio of heat rejected to body at 450 degree celcius to the heat supplied by the reservoir=0.7482")
