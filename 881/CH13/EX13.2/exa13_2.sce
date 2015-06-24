clc;
//Example 13.2
//Page No 554



//solution

n1=1.485;
a=50*10^-6; 
N=320; 
l=0.850*10^-6;

disp("Number of modes in a step-index fibre, N is given by equation 13-13, ");

r=(sqrt(320)*((l)/(%pi*2*a)));

n2=n1-r;

disp(n2,"n2 = ");
