clc 
//initialisation of variables
T1= 1000 //K
T2= 300 //K
k1= 6.0954 //cal deg^-1 mole^-1
k2= 3.2533*10^-3 //cal deg^-2 mole^-1
k3= -1.071*10^-6 //cal deg^-3 mole^-1
//CALCULATIONS
dH= k1*(T1-T2)+(k2*(T1^2-T2^2)/2)+(k3*(T1^3-T2^3)/3)
//RESULTS
printf ('dH= %.f cal mole^-1',dH)
