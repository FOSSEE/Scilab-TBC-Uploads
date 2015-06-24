//Finding capacitance
//Example 4.1(pg 110)
clc
clear
// Let C1 and C2 be unknown capacities
//C1+C2=0.16
//(C1*C2)/(C1 + C2)=0.03
// from the above 2 equations we get the following polynomial
s=poly(0,"s");
p=s^2 -0.16*s +0.0048
[c1]=roots(p)
c2=0.16-c1
printf('Thus the capacitance of condensers is  %3.2f microF \n ',c1)

