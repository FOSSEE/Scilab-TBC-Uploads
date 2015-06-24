// Example 1.48 Five men in a compan of 20 are graduated
clc;
clear;
N=factorial(20)/(factorial(3)*factorial(17));
M1=(factorial(5)/(factorial(2)*factorial(3)))*(factorial(15)/(factorial(0)*factorial(15)));
M2=(factorial(5)/(factorial(0)*factorial(5)))*(factorial(15)/(factorial(3)*factorial(12)));
disp(1-(M2/N),"Probab. taht atleast one is graduate =",M1/N,"Probab. that all 3 are graduate =",M2,"No. of ways to select 3 men such that no one is Graduate=",M1,"No. of ways to select 3 men such that they are Graduate=",N,"No. of ways of selecting =");
