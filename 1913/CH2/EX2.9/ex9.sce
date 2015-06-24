clc
clear
//Input data
p1=170;//Initial pressure of the fluid in kPa
p2=400;//Final pressure of the fluid in kPa
v1=0.03;//Initial volume in m^3
v2=0.06;//Final volume in m^3

//Calculations
U=3.15*[(p2*v2)-(p1*v1)];//The change in internal energy of the fluid in kJ
A=[1 v1
   1 v2] //Coefficient matrix
B=[p1
   p2]  //Constant matrix
X=inv(A)*B;//Variable matrix
W=[X(1)*(v2-v1)]+[X(2)*((v2^2-v1^2)/2)];//The work done during the process in kJ
Q=U+W;//The heat transfer in kJ

//Output
printf('(a)The direction and magnitude of work W = %3.2f kJ \n (b)The direction and magnitude of heat transfer Q = %3.2f kJ ',W,Q)
