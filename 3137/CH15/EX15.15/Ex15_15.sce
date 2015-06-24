//Initilization of variables
b1=75 //mm
b2=12 //mm
h1=12 //mm
h2=162 //mm
d1=75 //mm
//Calculations
A=(h2*b2)+(2*b1*h1) //mm^2
I1=(1/12)*(b1)*(h1^3)+(b1*h1*d1^2) //mm^4
I2=(1/12)*(b2)*(h2^3) //mm^4
I_bar=2*I1+I2 //mm^4
k=sqrt(I_bar/A) //mm
//Result
clc
printf('The radius of gyration is %f mm',k) 
