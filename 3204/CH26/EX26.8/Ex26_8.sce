// 1 APPENDIX. Ex no 8. Page no 644
//initilization of variables
A=[2,-6,-3]
B=[4,3,-1]
//Calculations
AcrossB=[(A(2)*B(3)-B(2)*A(3)),A(3)*B(1)-A(1)*B(3),A(1)*B(2)-A(2)*B(1)]
mag=sqrt(AcrossB(1)^2+AcrossB(2)^2+AcrossB(3)^2)
n=AcrossB/mag
magA=sqrt(A(1)^2+A(2)^2+A(3)^2)
magB=sqrt(B(1)^2+B(2)^2+B(3)^2)
theta=asind(mag/(magA*magB))
//Result
clc
printf("The cross prcoduct of the two vectors is %fi %fj+%fk\n",AcrossB(1),AcrossB(2),AcrossB(3)) // the answer for j part is wrong in textbook
printf("The angle between the two is %f degrees",theta)
// Only 1 value for theta has been solved. Ref textbook for the other value
