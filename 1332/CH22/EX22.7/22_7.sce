//Example 22.7
//First Order ODE
//Page no. 783
clc;clear;close;

deff('y=f(x)','y=(exp(-x^2/2))/(1+x+x^3)')
printf('Test Points\tActual Solution \tEstimated Solution\tError\n   x\t\twa(x)\t\t\twt(x)\t\t\tdw(x)\n------------------------------------------------------------------------\n')
x=[0.1054,0.1091,0.2693,0.2703,0.3067,0.3088,0.4268,0.4284,0.5098,0.5139];
e=[0.1027,0.1063,0.2513,0.2522,0.2832,0.2849,0.3792,0.3805,0.4398,0.4427]
for i=1:10
    printf(' %.4f \t%.4f  \t\t%.4f\t\t\t%.4f\t\n',x(i),(1-f(x(i))),e(i),-e(i)+(1-f(x(i))))
end
printf('\n\n\nExperimental result varying from calculated result')