//Eg-6.13
//pg-302           

clear
clc

//zc-confidence level
A=[3 99.73;2.33 98;1.96 95;1.65 90;1.28 80;1 68.27];

//mean and standard deviation
x=24.8;
s=1.35;
n=60;//two months

//90% confidence level
zc=1.65;
limit1=x-zc*s/n^.5;
limit2=x+zc*s/n^.5;

//95% confidence level
zc=2.33;
lim1=x-zc*s/n^.5;
lim2=x+zc*s/n^.5;

disp("90% confidencelevel limits")
disp(limit1)
disp(limit2)
disp("95% confidencelevel limits")
disp(lim1)
disp(lim2)
