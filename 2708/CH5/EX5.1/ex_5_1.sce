//Example 5.1 
clc;
// 1st part //critical angle
u1=1.48;// refractive index of cladding
u2=1.5;// refractive index of core
u=1;// refractive index of air
theta=asin(u1/u2);// critical angle in radian
theta=theta*180/%pi;// to convert in degree
disp(theta,"critical angle in degree")
// 2nd part //fractional refractive index
Fr=(u2-u1)/u2;// fractional refractive index
Fr=Fr*100;// to convert in percent
disp(Fr,"fractional refractive index in percentage")
// 3rd part // acceptance angle
A=asin(sqrt(u2^2-u1^2));// Acceptance angle in radian
disp(A,"Acceptance angle in radian")
// 4th part //numerical aperture
NA=sin(A);// Numerical aperture
disp(NA,"Numerical aperture ")
