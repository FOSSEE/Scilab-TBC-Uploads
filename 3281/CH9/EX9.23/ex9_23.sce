//Page Number: 515
//Example 9.23
clc;
//Given
lam=8000D-10; //m
a=0.5D-2; //m
D=4D+8; //m

//Angular Spread
t=(1.22*lam)/a;
disp('rad',t,'Angular spread:');

//Aerial spread
A=%pi*((D*t)^2);
disp('m sqr',A,'Aerial spread:');


//Answer for A is given as 193 m sqr but it is 1.915D+10 m sqr
