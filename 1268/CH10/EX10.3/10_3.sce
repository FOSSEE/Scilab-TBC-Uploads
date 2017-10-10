clc;
disp("Example 10.3")
ratio=5 // of the two pressures
T=293 // inn K
gama=1.4
M=29 // molecular weight
r=8314 // gas constant
y=(ratio^((gama-1)/gama))-1
w=r*T*gama*y/(M*(gama-1))
disp(w,"Work done is ")
