//Chapter-4, Illustration 11, Page 142
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear
//Input data
Ta=40//       no of teeth on gear A
Td=90//       no of teeth on gear D

//Calculations
Tb=(Td-Ta)/2//      no of teeth on gear B
Tc=Tb//           no of teeth on gear C
//
//x+y=-1
//-40x+90y=45
A=[1 1
   -Ta Td]//Coefficient matrix
B=[-1
   (Td/2)]//Constant matrix
X=inv(A)*B//Variable matrix
//
//x+y=-1
//-40x+90y=0
A1=[1 1
   -Ta Td]//Coefficient matrix
B1=[-1
   0]//Constant matrix
X1=inv(A1)*B1//Variable matrix
  
disp(X(2)) 
printf('speed of the arm = %.3f revolution clockwise',X1(2))
