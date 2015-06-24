// Example 1.11. smallest change which can be measured by this transducer
clc, clear
// given :
F=200; // range of force in N
R=.15/100; // resolution of full scale
Sc=R*F;
disp(Sc,"smallest change,Sc = (N)")
