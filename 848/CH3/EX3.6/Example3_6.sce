//clear//
//Caption:Calculation of bandwidth distance
//Example3.6
//page 104
clear;
clc;
close;
n1 = 1.48;//core refractive index
n2 = 1.465;//claddinig refractive index
delta = 0.01;//index difference
C =3*(10^8); //free space velcotiy
BL = (n2/(n1^2))*(C/delta);
disp(BL,'Bandwidth distance in bPS-M')
disp(BL/10^9,'Bandwidth distance in MbPS-KM')
//Result
//Bandwidth distance in bPS-M   
//     2.006D+10  
//Bandwidth distance in MbPS-KM   
//     20.064828 
