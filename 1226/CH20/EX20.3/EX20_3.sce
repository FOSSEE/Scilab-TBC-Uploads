clc;funcprot(0);//EXAMPLE 20.3
// Initialisation of Variables
p1=1;......//Suction pressure in bar
t1=293;.....//Suction temperature in K
n=1.2;......//Compression index
p2=10;......//Delivery pressure in bar
R=0.287;....//Gas constant in kJ/kgK
cv=0.718;...//Specific heat at constant volume in kJ/kgK
//Calculations
t2=t1*((p2/p1)^((n-1)/n));.....//Temperature at the end of compression in K
disp(t2,"Temperature at the end of compression in K:")
W=1*R*t1*(n/(n-1))*(((p2/p1)^((n-1)/n))-1);.......//Work done during compression of air in kJ
disp(W,"Work done during compression per kg of air in kJ:")
Q=(t2-t1)*(cv-((R)/(n-1)));..........//Heat transferred during compression of air in kJ/kg
disp(Q,"Heat transferred during compression per kg of air in kJ:")
