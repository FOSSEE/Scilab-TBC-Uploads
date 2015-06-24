// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 3")
disp("Refering Figure")
disp("Given Data")
U2= 14//m/s
U1=U2
Q = 0.82//m3/s
H =45//m
beta2 = 180-160
Cv = 0.98
g = 9.81
disp("Velocity of jet C1")
C1 = Cv*(2*g*H)^0.5
disp("Assuming beta1 = 180")
beta1 = 180;
Cw1 = C1
V1 = C1-U1
disp("From outlet velocity triangle,U1 = U2(neglecting losses on buckets)")
V2 = V1
Cw2 = V2*cos(beta2*%pi/180) -U2
disp("Work done per weight mass of water per sec")
W = (Cw1+Cw2)*U1
disp("Power developed P in kw and horse power are Pkw,Php")
Pkw = W*Q
Php = Pkw*1000/746//in horse power
disp("Efficiency eta1")
eta1 = 1000*Pkw/(1000*g*Q*H)
