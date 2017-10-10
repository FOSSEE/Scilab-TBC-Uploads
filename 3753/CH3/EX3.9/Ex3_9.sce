//Example number 3.9, Page number 3.35


clc;clear;close

// Variable declaration
lamda_L1=39.6*10**-9 // in m
lamda_L2=173*10**-9 // in m
T1=7.1 // in s
T2=3 // in s

// Calculations
x=(lamda_L1/lamda_L2)**2 // in kg/m^2
Tc4=(T1**4)-((T2**4)*x)/(1-x) // in K
Tc=(Tc4)**(1/4) // in K
printf("Tc = %0.4f K",Tc)
printf("\nlamda0 = %.f nm",round((sqrt(1-(T2/Tc)**4)*lamda_L1)*10**9))
