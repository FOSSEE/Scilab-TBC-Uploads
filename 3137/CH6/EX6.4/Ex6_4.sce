//Intilization of variables
F=[0;60;0] //Force defined as a matrix
t1=[-3/7;6/7;-2/7] //Tension defined as a matrix
t2=[4/4.47;0;-2/4.47] //tension defined as a mtrix
t3=[-3/5;0;4/5] //Tension defined as a matrix
//Calculations
//Summation of forces in the y-direction
T1=F(2,1)/t1(2,1) //N
//Summation of forces in the x-direction and z direction
M1=[t2(1,1) t3(1,1);t2(3,1) t3(3,1)]
M2=-1*[t1(1,1)*T1;t1(3,1)*T1] 
R=inv(M1)*M2
//Result
clc
printf('The tension in the strings are T1=%f,T2=%f and T3=%f',T1,R(1),R(2))
