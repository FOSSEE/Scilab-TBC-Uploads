//Example 2.11
//inverse z transform by power series expansion
clear;clc;
xdel(winsid());

z=%z;
num=2;
den=(2-(3*z^-1)+z^-2);
X=syslin('c',num/den)
//dividing the numerator and denominator by 2
num1=1;
den1=1-(1.5*(z^-1))+(0.5*(z^-2));
X1=syslin('c',(num1)/(den1))
//when mod(z)>1
//developing series expansion in negative power of z
A1=(num1)-(den1)
 // multiplying the den2 by 1 and subtracting it from num1
B1=((1.5*(z^-1))-(0.5*(z^-2)))-((1.5*(z^-1))*den1) 
// multiplying the den2 by (1.5*z^-1) and subtracting it from reminder of A1
C1=((1.75*z^-2)-(0.75*z^-3))-((1.75*z^-2)*den1)  
// multiplying the den2 by (1.75*z^-2) and subtracting it from reminder of A1
D1=((1.875*z^-3)-(0.875*z^-4))-((1.875*z^-3)*den1) 
 // multiplying the den2 by (1.875*z^-3) and subtracting it from reminder of A1
E1=((1.9375*z^-4)-(0.9375*z^-5))-((1.9375*z^-4)*den1) 
// multiplying the den2 by (1.9375*z^-4) and subtracting it from reminder of A1
disp("x1(n)=1,1.5,1.75,1.875,1.9375,........")

//when mod(z)<0.5
//developing series expansion in positive power of z
A2=(num)-((2*z^2)*den) //multiplyong the den by 2*(z^2) and subtracting it from num
B2=A2-(6*z^3*den)
//multiplyong the den by 2*(z^2) and subtracting it from A2
C2=B2-(14*z^4*den)
//multiplyong the den by 2*(z^2) and subtracting it from B2
D2=C2-(30*z^5*den)
//multiplyong the den by 2*(z^2) and subtracting it from C2
E2=D2-(62*z^6*den)
//multiplyong the den by 2*(z^2) and subtracting it from D2
disp("X2(z)=2*z^2+6*z^3+14*z^4+30*z^5+62*z^6+........")
disp("x2(n)=.....,62,30,14,6,2,0,0")
