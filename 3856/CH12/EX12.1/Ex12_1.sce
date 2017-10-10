//To Calculate the rate Constant for the Reaction

//Example 12.1

clc;
clear;

t=[0,2000,4000,6000,8000,10000,12000];//Time in seconds

A=[1.5,1.26,1.07,0.92,0.81,0.72,0.65];//Absorbance

A0=1.5;//Absorbance at t=0s

Ainf=0.40;//Absorbance at t=infinity

for i=1:6
    x(i)=t(i);//Putting the x-axis as t/s
end 

for i=1:6
    y(i)=log((A(i)-Ainf)/(A0-Ainf));//Putting the y-axis as ln((At-Ainf)/(A0-Ainf))
end

plot(x,y);//Plotting the Graph between x-axis and y-axis

xlabel("t/s", "fontsize", 2);//Putting the x-axis as t/s

ylabel("ln((At-Ainf)/(A0-Ainf))", "fontsize", 2);//Putting the y-axis as ln((At-Ainf)/(A0-Ainf))

m=-(y(2)-y(1))/(x(2)-x(1));//Calculating the slope (Rate Constant of Reaction) of Graph

printf("The rate constant for the reaction = %.3f*10^-4 s^-1",m*10^4);
