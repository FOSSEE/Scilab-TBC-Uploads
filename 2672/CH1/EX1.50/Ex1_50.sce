//Example 1_50
clc;
clear;
close;
format('v',5);
//given data :
I=8;//A
I4=6;//A
R1=3;//ohm
R2=2;//ohm
R3=4;//ohm
//Applying KCL//I=I1+I2
//I=V1/R1+V1/R2-V2/R2//eqn(1)
A1=[1/R1+1/R2 -1/R2];//Coefficient Matrix
B1=[I];//Coefficient Matrix
//Applying KCL//I2=I3+I4
//V1/R2-V2/R2-V2/R3=I4//eqn(2)
A2=[1/R2 -1/R2-1/R3];//Coefficient Matrix
B2=[I4];//Coefficient Matrix
A=[A1;A2];//Coefficient Matrix
B=[B1;B2];//Coefficient Matrix
X=A^-1*B;//solution Matrix
V1=X(1);//V
V2=X(2);//V
I1=V1/R1;//A
I2=V1/R2-V2/R2;//A
I3=(V2)/R3;//A
disp("Current in various branches are : ");
disp(I1,"Current I1(A)");
disp(I2,"Current I2(A)");
disp(I3,"Current I3(A)");
