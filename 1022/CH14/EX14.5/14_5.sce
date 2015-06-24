clc
//initialisation of variables
T= 300 //F
T1= 50 //F
s= 0.17*10^-8 //Btu/hr ft^2 R^4
e1= 0.93
A= 10 //in
F= 1
//CALCULATIONS
A1= 10*(40/(12*10))
q= A1*F*e1*s*((T+460)^4-(T1+460)^4)
//RESULTS
printf ('Heat loss from the conduit by radiation = %.f Btu/hr per ft',q)
