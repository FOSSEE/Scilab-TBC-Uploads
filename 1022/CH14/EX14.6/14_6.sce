clc
//initialisation of variables
T= 300 //F
T1= 50 //F
s= 0.17*10^-8 //Btu/hr ft^2 R^4
e1= 0.93
F= 1
//CALCULATIONS
hr= F*e1*s*((T+460)^4-(T1+460)^4)/(T-T1)
//RESULTS
printf ('Radiation heat transfer coefficient= %.2f Btu/hr ft^2 R',hr)
