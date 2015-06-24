clc
clear
//Initialization of variables
m1=54.1
m2=56.1
m3=2
cp1=2.122 //kJ/kmol K
cp2=2.213 //kJ/kmol K
cp3=14.499 //kJ/kmol K
hf1=110200 //kJ/kmol
hf2=-126 //kJ/kmol
T=700 //K
Ts=298 //K
//calculations
hf=hf1-hf2
cpn=cp1*m1-cp2*m2+cp3*m3
h700=hf+ cpn*(T-Ts)
s298=103.7
s700 = s298 + cpn*log(T/Ts)
G700=h700-T*s700
//results
printf("Change in gibbs energy = %d kJ/kmol",G700)
disp("The answer is a bit different due to rounding off error in textbook")
