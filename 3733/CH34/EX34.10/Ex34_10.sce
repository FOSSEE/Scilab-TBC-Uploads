// Example 34_10
clc;funcprot(0);
//Given data
// dF_a/dP_a=0.065*P_a+25;
// dF_b/dP_b=0.08*P_b+20;
L=160;// Total load in MW

// Calculation
//(a)
function[X]=power(y)
    X(1)=(y(1)+y(2))-L;
    X(2)=((0.065*y(1))+25)-((0.08*y(2))+20);
endfunction
y=[10 100];
z=fsolve(y,power);
P_a=z(1);// MW
P_b=z(2);// MW
//(b)
L=160/2;//If the load is equally shared by both the units
p_a1=P_a;
p_a2=L;// Limits of integration
Ic_A=integrate('((0.065*p_a)+25)','p_a',p_a1,p_a2);// Increase in cost for unit A in Rs/hr.
p_b1=P_b;
p_b2=L;// Limits of integration
Ic_B=integrate('((0.08*p_b)+20)','p_b',p_b1,p_b2);// Increase in cost for unit B in Rs/hr.
dC=Ic_A+Ic_B;
printf('\n(a)P_a=%0.1f MW \n   P_b=%0.1f MW \n(b)The loss in fuel cost per hour=Rs.%0.0f/hr',P_a,P_b,dC);
// The answer provided in the textbook is wrong
