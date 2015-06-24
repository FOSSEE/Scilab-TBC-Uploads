//Initilization of variables
F=[150;90;160] //lb force vector kind of decleration
//Co-ordinates defined as [x;y;z] all the co-ordinates are in feet
C_1=[2;0;0] 
C_2=[0;0;1]
C_3=[0;-2;-1]
C_4=[-1;0;-1]
//Calculations
A=C_2-C_1
B=C_4-C_3
F1=(F(1,1)*A)/sqrt(A(1,1)^2+A(2,1)^2+A(3,1))
F2=(F(2,1)*B)/sqrt(B(1,1)^2+B(2,1)^2+B(3,1))
R=F1+F2
//The calculations for this is done differently
C1x=det([1 0 0;C_1(1,1) C_1(2,1) C_1(3,1);F1(1,1) F1(2,1) F1(3,1)])
C1y=det([0 1 0;C_1(1,1) C_1(2,1) C_1(3,1);F1(1,1) F1(2,1) F1(3,1)])
C1z=det([0 0 1;C_1(1,1) C_1(2,1) C_1(3,1);F1(1,1) F1(2,1) F1(3,1)])
C2x=det([1 0 0;C_3(1,1) C_3(2,1) C_3(3,1);F2(1,1) F2(2,1) F2(3,1)])
C2y=det([0 1 0;C_3(1,1) C_3(2,1) C_3(3,1);F2(1,1) F2(2,1) F2(3,1)])
C2z=det([0 0 1;C_3(1,1) C_3(2,1) C_3(3,1);F2(1,1) F2(2,1) F2(3,1)])
C3z=[0;0;F(3,1)]
sC1=[C1x;C1y;C1z]
sC2=[C2x;C2y;C2z]
C=sC1+sC2+C3z
//Result
clc
printf('The resultant force couple is %fi%fj+%fk lb-ft',C(1,1), C(2,1), C(3,1))
