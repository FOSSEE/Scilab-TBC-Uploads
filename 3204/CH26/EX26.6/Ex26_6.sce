// 1 APPENDIX. Ex no 6. Page no 643
//initilization of variables
A=[4,-3,1]
P=[2,3,-1]
Q=[-2,-4,3]
//Calculations
B=[Q(1)-P(1),Q(2)-P(2),Q(3)-P(3)]
AdotB=A(1)*B(1)+A(2)*B(2)+A(3)*B(3)
magB=sqrt(B(1)^2+B(2)^2+B(3)^2)
Acostheta=AdotB/magB
//Result
clc
printf("The value of A.costheta is %f",Acostheta)
