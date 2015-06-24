clc
//initialisation of variables
T= 176.5 //C
T1= 158.8 //C
Kf= 37.7
W1= 0.522 //gms
W2= 0.0386 //gms
m= 12 //gms
m1= 1 //gm
//CALCULATIONS
m3= (T-T1)/Kf
M2= W2*1000/(m3*W1)
r= M2/(m+m1)
//RESULTS
printf (' value of n = %.f ',r)
