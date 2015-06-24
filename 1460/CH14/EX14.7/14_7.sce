clc
//initialization of variables
U=115 //B/hr-ft^2-F
T1=190 //F
T2=160 //F
Tc1=65 //F
Tc2=100 //F
w=140 //lbm/min
c=0.8 //B/lbm F
//calculations
Q=w*60*c*(T1-T2)
dT=((T1-Tc2) - (T2-Tc1))/log((T1-Tc2)/(T2-Tc1))
A=Q/(U*dT)
//results
printf("Required Area = %.1f ft^2",A)
