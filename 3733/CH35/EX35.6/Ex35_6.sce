// Example 35_6
clc;funcprot(0);
//Given data
MD=50;// MW
md=10;// MW
n_o=60/100;// Over all efficiency of the plant 
L_h=60;// MWh

// Calculation 
// From Fig.Prob.35.6
// Area DEGHD=0.6*Area EFBE;
// xy-120*10^3=(24-x)*(40*10^3-y)0.6;.....(a)
// y/40000=x/24;.....(b)
// Solving (a) and (b),we get
// x^2+72x-1044=0
coeff=[1,72,-1044];
y=roots(coeff);
x=y(2);// hours
y=(40000/24)*x*(1/1000);// Total capacity of hydel plant in MW
L_s=MD-y;// Capacity of steam plant in MW
printf('\nTotal capacity of hydel plant=%0.3f MW \nCapacity of steam plant=%0.3f MW',y,L_s);
// The answer vary due to round off error
