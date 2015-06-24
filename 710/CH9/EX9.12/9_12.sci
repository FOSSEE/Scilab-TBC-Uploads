clc();
clear;
//To determine the angle of second order bragg's reflections
//According to Bragg's eq.2*d*sin(teta)=n*lambda
n=2;                              //since second order Bragg's eq.
d=5;                              //since d=5(lambda)
lambda=1;
a=(n*lambda)/(2*5*lambda);
teta=asind(a)                    //angle of second order Braggs reflections
printf("The angle of second order Braggs reflection is %f",teta);