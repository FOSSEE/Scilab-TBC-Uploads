// Problem 3.14,Page no.63

clc;clear;
close;

A=1600 //mm**2 //Area of the Bar
P=480*10**3 //N //Load
dell_L=0.4 //mm //Contraction of metal bar
L=200 //mm //Length of metal bar
sigma_t=0.04 //mm //Guage Length
t=40

//Calculations

sigma_L=dell_L*L**-1
E=((P*L)*(A*dell_L)**-1*10**-3) //N/mm**2 //Young's Modulus 
m=t*sigma_t**-1*sigma_L


//Result
printf("The value of Young''s Modulus  is %.2f N/mm^2",E)
printf("\n The value of Poissoin''s ratio is %.2f",m)
