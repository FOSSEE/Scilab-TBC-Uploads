// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 10")
disp("For no loss up to throat Ps in bars")
P01 = 4;//bar
gam = 1.33;
Ps = P01*(2/(gam+1))^(gam/(gam-1))
T01 = 1100;//K
Ts = 944;//K
Cpg = 1147;
U = 300;//m/s
C = (2*Cpg*(T01-Ts))^0.5//m/s
R = 0.287;
rhos = Ps*100/(R*Ts)//kg/m3
disp("Throat area in m2")
m=20;//kg/s
A = m/(rhos*C)
disp("Angle alpha1, at any radius r and alpha1m at the design radius rm are related by the equation")
disp("tan(alpha1) = rm*tan(alpha1m)/r")
disp("Given")
disp("Tip radius/Root radius = rt/rr = 1.4")
disp("Therefore mean radius/root radius = 1.2")
alpha1m = 25
alpha1r = atan(1.2*tan(alpha1m*%pi/180))*180/%pi
alpha1t = atan(tan(alpha1r*%pi/180)/1.4)*180/%pi
disp("Velocity in m/s")
disp("Cw2 = rm*x*Cw2m/rr = rm*Ca2/(rr*tan(alpha2m))")
Cw2 = 1.2*250/tan(alpha1m*%pi/180)
disp("Power developed in kW")
W = m*U*Cw2/1000
