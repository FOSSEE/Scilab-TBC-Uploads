clc 
//initialisation of variables
w= 4 //ft
l= 4 //ft
X= 10 //ft
a= 45 //degrees
W= 100 //lbs
a1= 60 //degrees
w1= 62.4 //lbs/ft^3
//CALCULATIONS
A= w*l
X1= X+(w/2)*sind(a)
Ig= w*l^3/12
I0= Ig+(A*X1^2/(sind(a))^2)
h= I0*(sind(a))^2/(A*X1)
P= w1*A*X1
h1= h-X
h2= h1/sind(a)
T= (W*(l/2)*sind(a)+P*h2)/(w*sind(a1))
//RESULTS
printf ('Pull in the chain= %.f lbs ',T)
