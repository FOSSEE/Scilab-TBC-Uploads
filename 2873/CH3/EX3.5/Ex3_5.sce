// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 5")
m=5;//mass of gas in kg
p1=1*10^3;//initial pressure of gas in KPa
V1=0.5;//initial volume of gas in m^3
p2=0.5*10^3;//final pressure of gas in KPa
n=1.3;//expansion constant
disp("given p*v^1.3=constant")
disp("assuming expansion to be quasi-static,the work may be given as")
disp("W=m(p*dv)=(p2*V2-p1*V1)/(1-n)")
disp("from internal energy relation,change in specific internal energy")
disp("deltau=u2-u1=1.8*(p2*v2-p1*v1)in KJ/kg")
disp("total change,deltaU=1.8*m*(p2*v2-p1*v1)=1.8*(p2*V2-p1*V1)in KJ")
disp("using p1*V1^1.3=p2*V2^1.3")
disp("V2=V1*(p1/p2)^(1/1.3)in m^3")
V2=V1*(p1/p2)^(1/1.3)
disp("take V2=.852 m^3")
V2=0.852;//final volume of gas in m^3
disp("so deltaU in KJ")
deltaU=1.8*(p2*V2-p1*V1)
disp("and W in KJ")
W=(p2*V2-p1*V1)/(1-n)
disp("from first law")
disp("deltaQ=deltaU+W in KJ")
deltaQ=deltaU+W
disp("heat interaction=113.5 KJ")
disp("work interaction=246.7 KJ")
disp("change in internal energy=-113.2 KJ")
