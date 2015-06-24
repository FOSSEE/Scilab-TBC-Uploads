//gauss' formula
//example 6.19
//page 242
clc;clear;close;
u=[-0.86113 -0.33998 0.33998 0.86113];
W=[0.34785 0.65214 0.65214 0.34785];
I=0;
for i=1:4
    I=I+(u(i)+1)*W(i);
end
I=I/4;
printf(' the value of integrand is : %0.5f',I);
