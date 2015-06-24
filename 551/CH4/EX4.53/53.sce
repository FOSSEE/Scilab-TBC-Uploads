clc
m=1; //kg
p=8; //bar
s1=6.55; //kJ/kg.K
T=200; //0C
s_f1=2.0457; //kJ/kg.K
s_fg1=4.6139; //kJ/kg.K
h_f1=720.9; //kJ/kg
h_fg1=2046.5; //kJ/kg
h2=2839.3; //kJ/kg

x1=(s1-s_f1)/s_fg1;
h1=h_f1+x1*h_fg1;
Q=h2-h1;
disp("Heat supplied=")
disp(Q)
disp("kJ/kg")

// For T-s diagram

s=0:0.01:10;
T=(-(s-5)^2+298);
plot(s,T)

T=[295.44 295.44];
s=[6.6 3.45];
plot(s,T,'g')

s=[6.6 7];
T=[295.44 300];
plot(s,T,'g')

s=[6.55 6.55];
T=[270 295.44];
plot(s,T,'r')

s=[6.6 6.6];
T=[270 295.44];
plot(s,T,'--r')

s=[6.66 6.66];
T=[270 295.44];
plot(s,T,'r')

xtitle("T-s diagram", "s(kJ/kg K)", "T(K)")
//The area in red represents the heat flow and it goes upto x-axis