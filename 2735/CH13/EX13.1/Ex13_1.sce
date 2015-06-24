clc
clear
//Initialization of variables
h1=1329.1 //Btu/lbm
v1=6.218 //ft^3/lbm
J=778
g=32.174
m=1
//calculations
p=[80 60 54.6 40 20]
h=[ 1304.1 1273.8 1265 1234.2 1174.8]
v=[ 7.384 9.208 9.844 12.554 21.279]
Fc=1
V2=Fc*sqrt(2*J*g*(h1-h))
A=m*v ./V2
V2=[0 V2]
A=[0 A]
//results
disp('velocity (ft/s)= ')
disp(V2 )
disp('Area (ft^2)= ')
disp(A)
disp('The initial values of velocity and area are 0 and infinity respectively. Since, Infinity in calculations stops the code to display an error. It has been mentioned separately.')
