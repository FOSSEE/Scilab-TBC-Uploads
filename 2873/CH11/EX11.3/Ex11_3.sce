// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 3")
T1=(-27+273);//temperature of refrigerator in K
W=3*.7457;//work input in KJ/s
Q=1*3.5;//refrigeration effect in KJ/s
disp("COP=T1/(T2-T1)=Q/W")
COP=Q/W
COP=1.56;//approx.
disp("equating,COP=T1/(T2-T1)")
disp("so temperature of surrounding(T2)in K")
disp("T2=T1+(T1/COP)")
T2=T1+(T1/COP)
