//Example no 1-11
//page no. 26
clc;
clear;
//m= p*{m+[2*n/(1-n)^2]^2};

n=1.5;          //refractive indices
p=0.45;         //degree of polarisation
m={p*[2*n/(1-n^2)]^2}/(1-p);
printf("\n Thus it will require %0.0f reflective plate to achive a degree of polarization equal to 0.45",m);        //Result  mis rounded of to nearest integer
