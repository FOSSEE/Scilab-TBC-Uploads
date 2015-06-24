clc
//initialisation of variables
t= 8 //in
t1= 1 //in
k= 0.50 //Btu/hr ft F
k1= 0.02 //Btu/hr ft F
A= 1 //ft^2
T= 60 //F
T1= -20 //F
//CALCULATIONS
Rc= (t/12)/(k*A)
Rf= (t1/12)/(k1*A)
R= Rc+Rf
q= (T-T1)/R
T2= (T+(Rc/Rf)*T1)/(1+(Rc/Rf))
//RESULTS
printf ('Rate of heat flow= %.1f Btu/hr',q)
printf (' \n Temperature at the interface= %.1f F',T2)
