//Chapter 6,Example 6.6 Page 201
clc
clear
w = 314
E0 = 8.854*10^-12
Er = 3.8
tang = 0.0085
E = 40*10^5
sigE = w*E0*Er*tang*E^2
printf (" σE^2 = %f Watts/m^3\n ",sigE)

//Answers may vary due to round off 
