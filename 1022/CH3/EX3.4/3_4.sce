clc
//initialisation of variables
d= 2.98 //in
T1= 69 //F
T2= -15 //F
alpha= 22.7*10^-6 //C^-1
//CALCULATIONS
A0= %pi*d^2/4
alpha1= alpha/1.8
A= 2*alpha1*A0*(T1-T2)
A1= A0-A
d1= sqrt(4*A1/%pi)
//RESULTS
printf ('diameter at -15 = %.3f in',d1)
