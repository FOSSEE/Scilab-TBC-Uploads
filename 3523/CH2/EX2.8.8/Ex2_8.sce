// Example 7// Ch 2
clc;
clear;
close;
// given data 
z=10; //length of graded cylindrical bushing in cm
a=2; // radius of conductor inside bushing in cm
V=150; //AC voltage in kV
E_bd=50; // field strength in kV/cm
x0 = 2;
x1 = 6.24;
t_gd = V*sqrt(2)/E_bd;
printf("thickness of graded design is %f cm \n", t_gd)
zr = z*(t_gd + a);// bushing length must satisfy curve for the profile
printf("bushing length %f cm^2", zr)
V1 = integrate('4*%pi*zr','r',x0,x1);
printf("volume of graded design is %f cm^2 \n", V1)
t = 2*[exp(t_gd/2)-1];
printf("thickness of regular design is %f cm \n",t)
V2 = %pi*[(a + t)^2 - (a^2)];
printf("volume of regular design is %f cm^2 \n",V2)
// Note: There is caluclation error to find the volume of regular design. 
// So answer in the book is wrong
