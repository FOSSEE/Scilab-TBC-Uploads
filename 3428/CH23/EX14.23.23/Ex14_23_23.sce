//Section-14,Example-7,Page no.-PC.114
//To estimate the pH of the given solution.
clc;
pKa=3.08
Ka=10^(-pKa)
x1=(-Ka+sqrt((Ka)^2+(4*0.01*Ka)))/2
x2=(-Ka-sqrt((Ka)^2+(4*0.01*Ka)))/2          //neglected
pH=-log10(x1)
disp(pH,'pH of the given solution')
