// 1 APPENDIX. Ex no 5. Page no 642
//initilization of variables
A=[2,-6,-3]
B=[4,3,-1] 
//Calculations
AdotB=A(1)*B(1)+A(2)*B(2)+A(3)*B(3) 
magA=sqrt(A(1)^2+A(2)^2+A(3)^2) 
magB=sqrt(B(1)^2+B(2)^2+B(3)^2)
theta=acosd(AdotB/(magA*magB)) //degrees

//Result
clc
printf("The product of both the vectors is %f\n",AdotB)
printf("The angle between them is %f degrees",theta)
