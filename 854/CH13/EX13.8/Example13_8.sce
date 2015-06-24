//clear//
//Caption:Program to find the refractive index of the prism material
//Example13.8
//page463
clear;
clc;
n2 =1.00; //refractive index of air
teta1 = 45; //incident angle in degrees
teta1 = 45/57.3;//incident angle in radians
n1 = n2/sin(teta1);
disp(n1,'refractive index of prism material n1=')
//Result
//refractive index of prism material n1=   
//     1.4142954  
