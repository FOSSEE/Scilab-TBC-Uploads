clear
clc
x=[293,298,303]
y=[0.0663,0.06839,0.07048]
plot(x,y,'mo-')
[m,c]=reglin(x,y)
n=2;//
F=96500;//in C
T=298;//in K
E=0.06839;//in V
DelG=-n*F*E;//in J
printf('DelG=%.1f J',DelG)
DelH=-n*F*(E-(T*m));//in J
printf('\nDelH=%.1f J',DelH)
DelS=n*F*m;//in J/K
printf('\nDelS=%.1f J/K',DelS)

//There are some errors in the solution given in textbook
//page 482
