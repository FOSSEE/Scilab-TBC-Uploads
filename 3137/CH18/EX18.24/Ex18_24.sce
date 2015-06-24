//Initilization of variables
d=8 //in
W=96.6 //lb
w=36 //rad/s
u=0.15 //coefficient of friction
g=32.2 //ft/s^2
//Calculations
r=(d/2)/12 //m
N=W //lb
F=u*N //lb
m=W/g //slugs
I=0.5*m*(r^2) //slug-ft^2
//Applying the impulse momentum theorem
//Solving the two equations simultaneously
A=[F,-m;F*r,I*(1/r)]
B=[0;w*I]
C=inv(A)*B
//Distance travelled
s=0.5*C(2)*C(1) //ft
t=C(1) //s
//Result
printf('The time required is %f s,and it travels %f ft',t,s)
