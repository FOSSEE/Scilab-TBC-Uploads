// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 15")
T1=400;//initial temperature of gas in K
R=8.314;//gas constant in 
disp("for constant pressure heating,say state changes from 1 to 2")
disp("Wa=p1*dv")
disp("Wa=p1*(v2-v1)")
disp("it is given that v2=2v1")
disp("so Wa=p1*v1=R*T1")
disp("for subsequent expansion at constant temperature say state from 2 to 3")
disp("also given that v3/v1=6,v3/v2=3")
disp("so work=Wb=p*dv")
disp("on solving above we get Wb=R*T2*ln(v3/v2)=R*T2*log3")
disp("temperature at 2 can be given by perfect gas consideration as,")
disp("T2/T1=v2/v1")
disp("or T2=2*T1")
disp("now total work done by air W=Wa+Wb=R*T1+R*T2*log3=R*T1+2*R*T1*log3 in KJ")
disp("so W=R*T1+2*R*T1*log(3)in KJ")
W=R*T1+2*R*T1*log(3)
