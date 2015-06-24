clc
//initialisation of variables
T= 100 //F
T1= 2000 //F
W= 3.2*10^4 //Btu/hr ft^2
W1= 140 //Btu/hr ft^2
s= 0.17*10^-8 //Btu/hr ft^2 R^4
//CALCULATIONS
alpha= W/(s*(T1+460)^4)
b= W1/(s*(T+460)^4)
//RESULTS
printf ('Average absorptivity of the body at 100 F = %.2f ',alpha)
printf (' \n Average absorptivity of the body at 2000 F= %.2f ',b)
