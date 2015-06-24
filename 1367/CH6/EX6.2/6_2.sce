//Calculate Ratio of no. of vacancies
//Ex:6.2
clc;
clear;
close;
r=8.314;// J/mol K
t1=300;//in K
ent=168*10^3;//enthalpy of formation of vacancy in J/mol
x1=exp(-ent/(r*t1));//x1=n/Na
t2=1000;//in K
x2=exp(-ent/(r*t2));//x2=n/Na
rt=x1/x2;//ratio 
disp(rt,"Ratio of no. of vacancies = ");