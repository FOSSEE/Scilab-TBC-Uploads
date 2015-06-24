//Initilization of variables
b1=2 //in
b2=4 //in
h1=8 //in
h2=2 //in
bo=8 //in
ho=8 //in
bi=4 //in
hi=4 //in
//Calculations
I1=(1/12)*(b1)*(h1^3) //in^4
I2=(1/12)*(b2)*(h2^3) //in^4
I=2*(I1+I2) //in^4
Io=(1/12)*(bo)*(ho^3) //in^4
Ii=(1/12)*(bi)*(hi^3) //in^4
I_bar=Io-Ii //in^4
//Result
clc
printf('The moment of inertia is %f in^4',I_bar)
