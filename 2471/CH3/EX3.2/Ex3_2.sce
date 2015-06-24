clear ;
clc;
// Example 3.2
printf('Example 3.2\n\n');
printf('Page No. 58\n\n');

// given
P = 10000;// Principal Amount in Pound
i = 0.15;// Interest Rate
n = 4;//years
Tc = P*(1+i)^n;
printf('The total repayment after adding compond interest is %.0f Pound\n',Tc)
