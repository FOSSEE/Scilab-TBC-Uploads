//Initilization of variables
y1=1 //in
y2=4 //in
d1=2.2-1 //in
d2=4-2.2 //in
A1=12 //in^2
A2=8 //in^2
b1=6 //in
b2=2 //in
h1=2 //in
h2=4 //in
//Calculations
y_bar=(A1*y1+A2*y2)/(A1+A2) //in
I1=(1/12)*(b1)*(h1^3) //in^4
I2=(1/12)*(b2)*(h2^3) //in^4
//Using Parallel Axes Theorem
I=(I1+A1*d1^2)+(I2+A2*d2^2) //in^4
//Result
clc
printf('The moment of inertia is %f in^4',I)
