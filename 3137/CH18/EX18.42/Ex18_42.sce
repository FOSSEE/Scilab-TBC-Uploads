//Initilization of variables
m1=9 //kg
m2=5.5 //kg
u1=-3 //m/s
u2=1.77 //m/s
e=0.8 //coefficient of restitution
//Calculations
//Solving by matrix method after we get the two equations
A=[-1,1;m1,m2]
B=[(e*u1-e*u2);m1*u1+m2*u2]
C=inv(A)*B //m/s
//Result
clc
printf('The 9kg ball will rebound up the speed of %f m/s\n and the 5.5kg ball will move to the right and down \nwith components of %f m/s and %f m/s respectively',C(1),u2,-C(2))
