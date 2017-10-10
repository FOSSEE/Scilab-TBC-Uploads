//Calculate the Mean Activity coefficient of Cupper Sulphate 

//Example 8.9

clc;

clear;

m1=0.010;  //Molarity of the solution in m

z1=2;  //Charge on cation 

z2=-2;  //Charge on anion 

I=(1/2)*((m1*z1^2)+(m1*z2^2));  //Ionic strength of the solution in m

gyma=10^(-0.509*abs(z1*z2)*sqrt(I));  //Mean Activity coefficien of CuSO4

printf("Mean Activity coefficient = %.3f",gyma);
