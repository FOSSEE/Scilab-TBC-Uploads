

clc
//initialization of variables
l = 200 // Length of the tower in cm
d = 60 // diameter of the tower
Lf = 300 // Liquid flow in cc/sec
Kx = 2.2*10^-3 // dominant transfer co efficient in liquid in cm/sec
//Calculations
A = %pi*60*60/4 // Area of the cross section in sq cm
L = Lf/A // Liquid flux in cm^2/sec
ratio = 1/(exp((l*Kx)/L))
percentage = (1-ratio)*100 // Percentage removal of Oxygen
//Results
printf("the percentage of oxygen we can remove is %.1f",percentage)



// Rounding of error in textbook
