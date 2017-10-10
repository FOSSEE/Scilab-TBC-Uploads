// Problem 3.16,Page no.64

clc;clear;
close;

E=200 //GN/m**2 //Modulus of elasticity
alpha=11*10**-6 //per degree celsius //coeffecient o flinear expansion of steel bar
L=6 //m //Length of rod


//Calculations 

//(Part-1) //IF the walls do not yield

t=58 //degree celsius //Fall in temperature //(t=80-22)
dell=alpha*t //strain
sigma=E*10**9*dell*10**-6 //MN/m**2 //Stress
A=%pi*4**-1*6.25*10**-4 //mm**2 //Area of wall and rod
P=sigma*10**6*A*10**-3 //KN //Pull Exerted

//(Part-2) //IF the walls yield together at the two ends is 1.15 mm

L_2=L*(1-alpha*t) //m //Length of rod at 22 degree celsius
L_3=L-L_2 //m //Decrease in Length 

//As the walls yield by 1.5 mm, actual decrease in length is
L_4=L_3-0.0015 //m 
dell_2=L_4*L**-1 //strain 
P_2=E*10**9*dell_2*A*10**-3 //KN

//Result
printf("Pull Exerted by the rod:when walls do not yield %.2f kN",P)
printf("\n                        :when total yield together at two ends is 1.5 mm = %.2f kN",P_2)
