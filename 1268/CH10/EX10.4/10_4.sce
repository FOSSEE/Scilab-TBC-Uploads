clear;
disp("Example 10.4")
T=298 // temperature in K
R=8314 // gas constant
M=29 // molecular weight
ratio=6 // of pressures
gama = 1.4;
y=(ratio^((gama-1)/gama))-1
w=r*T*gama*y/(M*(gama-1))
massrate=300/360
power=massrate*w
disp(power,"The power drawn is ")
