
clc 
// Given that
m = 1 // initial mass of radium in gm
m_ = 0.0021 // final mass of radium in gm
t = 5 // time for decay from m to m_ in years
// Sample Problem 13 on page no. 12.36
printf("\n # PROBLEM 13 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n N =N_0*e^(-lambda*t) \n")
lambda = log(m / (1 - m_)) / t
T = 0.693 / lambda
T_ = 1 / lambda
printf("\n Decay constant is %f per year.\n Half life of sample is %f years.\n Average life of sample is %f years.",lambda,T,T_)
//Answer in the book:2500 years
//Answer in the program:2378.451405 years
