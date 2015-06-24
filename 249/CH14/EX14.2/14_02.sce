clear
clc
sigma1=14;sigma2=10.5;
L1=119;
//spread of curve is directly proportional to sqrt of distance from origin
L=sigma1^2*L1/(sigma1^2-sigma2^2);
printf("\n The dumping of toxic phenol must have occured within %f",L)
printf("miles upstream of cincinnati")