clc
//initialisation of variables
m= 100 //gms
m1= 1 //gms
m2= 2 //gms
P= 23.756 //mm of Hg
n= 18.02 
n1= 60.06
n2= 342.3 
//CALCULATIONS
r= ((m1/n1)+(m2/n2))/((m1/n1)+(m2/n2)+(m/n))
dp= P*r
P1= P-dp
//RESULTS
printf (' vapour pressure = %.3f mm of Hg',P1)
