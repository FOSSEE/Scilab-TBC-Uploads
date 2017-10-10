clc;funcprot(0);//EXAMPLE 7.8
//page 193
// Initialisation of Variables
m=9;.........//Weibull modulus of an ceramic 
sigma1=250;.......//The flexural strength in MPa
F1=0.4;.......//probability of failure 
F2=0.1;.......//Expected the probability of failure
//CALCULATIONS
sigma2=exp(log(sigma1)-(log(log(1/(1-F1)))/m ));.....// The characteristic strength of the ceramic
sigma3=exp((log(log(1/(1-F2)))/m)+log(sigma2));........//Expected level of stress that can be supported in MPa
disp(sigma2,"The characteristic strength of the ceramic in MPa:")
disp(sigma3,"Expected level of stress that can be supported in MPa:")

