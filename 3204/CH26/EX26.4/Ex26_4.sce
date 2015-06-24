// 1 APPENDIX. Ex no 4. Page no 642
//initilization of variables
A=[2,-1,1]
B=[1,1,2]
C=[3,-2,4]
//Calculations
R=[A(1)+B(1)+C(1),A(2)+B(2)+C(2),A(3)+B(3)+C(3)] //Resultant
mag=sqrt(R(1)^2+R(2)^2+R(3)^2)
//Unit vector
U=R/mag 
//Result
clc
printf("The unit vector is %fi%fj+%fk",U(1),U(2),U(3))
//Answer for k part is incorrect in the textbook
