// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 6")
p1=1;//initial pressure of gas in MPa
v1=0.05;//initial volume of gas in m^3
p2=2;//final pressure of gas in MPa
n=1.4;//expansion constant
disp("final state volume(v2)in m^3")
disp("v2=((p1/p2)^(1/1.4))*v1")
v2=((p1/p2)^(1/1.4))*v1
disp("take v2=0.03 m^3")
v2=0.03;//final volume of gas in m^3
disp("now internal energy of gas is given by U=7.5*p*v-425")
disp("change in internal energy(deltaU)in KJ")
disp("deltaU=U2-U1=7.5*p2*v2-7.5*p1*v1")
disp("deltaU=7.5*10^3*(p2*v2-p1*v1)")
deltaU=7.5*10^3*(p2*v2-p1*v1)
disp("for quasi-static process")
disp("work(W) in KJ,W=p*dv")
disp("W=(p2*v2-p1*v1)/(1-n)")
W=((p2*v2-p1*v1)/(1-n))*10^3
disp("from first law of thermodynamics,")
disp("heat interaction(deltaQ)=deltaU+W")
deltaQ=deltaU+W
disp("heat=50 KJ")
disp("work=25 KJ(-ve)")
disp("internal energy change=75 KJ")
disp("if 180 KJ heat transfer takes place,then from 1st law,")
disp("deltaQ=deltaU+W")
disp("since end states remain same,therefore deltaU i.e change in internal energy remains unaltered.")
disp("W=180-75")
W=180-75
disp("W=105 KJ")
