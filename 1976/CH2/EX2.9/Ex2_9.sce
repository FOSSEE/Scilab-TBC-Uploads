
//To determine the most economic power factor
//Page 91
clc;
clear;

P=200*(10^3); //Maximum Demand
pf=0.707; //Power Factor Lagging

a=100; //Tariff per kVA per year

b=200; //Power factor improvement cost Per kVA.
r=20; //Interest Depriciation, maintenance and cost of losses amount to  20% of capital cost per year

// Economic PF = sqrt(1-((b1/a)^2))

b1=r*b/100;// b' term accrding to the equation above

pfeco=sqrt(1-((b1/a)^2)); //Economic Power Factor

printf('The Economic Power Factor is %g \n',pfeco)

