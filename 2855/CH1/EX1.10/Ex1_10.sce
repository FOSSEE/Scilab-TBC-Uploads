//Example no 1-10
//page no. 26
clc;
clear;
//p=m/{m+[2*n/(1-n)^2]^2};

m=5;            //no. of reflective plates
n=1.33;         //refractive indices
p=m/{m+[2*n/(1-(n)^2)]^2}; //degree of polarisation
printf("\n The degree of polarisation is %0.1f    \n",p);
