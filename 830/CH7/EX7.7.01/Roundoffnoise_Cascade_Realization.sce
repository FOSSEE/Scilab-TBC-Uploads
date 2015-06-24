//Graphical//
//Example 7.7.01
//Determination of Variance of round-off noise
//at the output of cascade realization
//H1(Z) = 1/(1-(1/2)z-1)
//H2(Z) = 1/(1-(1/4)z-1)
//H(Z) = (2/(1-(1/2)z-1))-(1/(1-(1/4)z-1))
clear;
clc;
close;
a1 = (1/2); //pole of first system in cascade connection
a2 = (1/4); //ploe of second system in cascade connection
sigma_e = 1; //quantization noise variance
//Noise variance of H1(Z)
sigma_2 = (1/(1-a2^2))*sigma_e^2//noise variance of second system
//Noise variance of H2(Z)
sigma_1 = 1/(1-a1^2)*sigma_e^2//noise variance of first system
//Nosie variance of H(Z)
sigma = (((2^2)/(1-a1^2))-((2^2)/(1-a1*a2))+(1/(1-a2^2)))*sigma_e^2
noise_variance = sigma+sigma_2 //Total noise variance
//Result
//sigma_2  =    1.0666667  
//sigma_1  =    1.3333333  
//sigma    =     1.8285714  
//noise_variance  =    2.8952381  
