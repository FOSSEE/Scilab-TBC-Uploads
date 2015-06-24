
clc
//initialization of variables
l = 0.07 // flim thickness in cm 
v = 3 // water flow in cm/sec
D = 1.8*10^-5 // diffusion coefficient in cm^2/sec
crat = 0.1 // Ratio of c1 and c1(sat)
//Calculations
z = (((l^2)*v)/(1.38*D))*((log(1-crat))^2) //Column length
//Results
printf("the column length needed is %.1f cm",z)

