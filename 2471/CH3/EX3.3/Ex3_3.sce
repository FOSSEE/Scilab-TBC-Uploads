clear ;
clc;
// Example 3.3
printf('Example 3.3\n\n');
//Page No. 59

// given
P = 60000;/// Principal Amount in Pound
i = 0.18;// Interest Rate
n = 10;//years
R = P*((i*(1+i)^n)/((1+i)^n -1));//Rate of Capital Recovery
printf('The annual investment required is %.1f Pound\n',R)

