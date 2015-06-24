clear
clc
//Original and new length(m)
L1=32;L2=50;
sigma1=8;
// For small deviaqtion from plug flow,sigma_sqr is directly proportional to L
sigma2=sigma1*sqrt(L2/L1);
printf("\n No of bottles of rose expected is %f",sigma2)