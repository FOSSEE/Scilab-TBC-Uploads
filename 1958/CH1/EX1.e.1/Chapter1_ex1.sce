clc
clear
//Input data
w=50//Weight in N
a=[40,50]//Angles made by two cables in degrees

//Calculations
//Solving two equations obtained from fig. 1.10 on page no.10
//-T1cos40+T2cos50=0
//T1sin40+T2sin50=50
A=[-cosd(a(1)) cosd(a(2))
    sind(a(1)) sind(a(2))]//Coefficient matrix
B=[0
   w]//Constant matrix
X=inv(A)*B//Variable matrix

//Output
printf('Tensions in all three cables are %3.2f N, %3.2f N, %i N',X(1),X(2),w)
