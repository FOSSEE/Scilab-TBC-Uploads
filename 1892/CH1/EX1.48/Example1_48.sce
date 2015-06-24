// Example 1.48

clear; clc; close;

format('v',6);
// Given data
P=16;//no. of poles
PM=4;//no. of poles of modulating function
n=1;//assumed
r=4;//assumed
f=50;//in Hz

//Calculations
check=n/r==1/3*(1-PM/P);
if check then
    disp("Equation is satisfied with -ve sign.");
    P2=P+PM;
    
end
check=n/r==1/3*(1+PM/P);
if check then
    disp("Equation is satisfied with +ve sign.")
    P2=P-PM;
end
Ns1=120*f/P;//in rpm
Ns2=120*f/P2;//in rpm
disp(Ns2,Ns1,"Two speeds(in rpm) are : ");
