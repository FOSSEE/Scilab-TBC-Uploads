//Example 1_49
clc;
clear;
close;
format('v',5);
//given data :
I1=1;//A
V3=12;//V
I4=0.5;//A
R1=10;//ohm
R2=10;//ohm
R3=20;//ohm
R4=20;//ohm
R5=20;//ohm
//Node B//I1=I2+I3
VB=poly(0,'VB');
VC=poly(0,'VC');
VD=poly(0,'VD');
I2=(VB)/R1;//A
//I3=(VB-VC)/R1;//A
//2*VB-VC=10//eqn(1)
A1=[2 -1 0];//Coefficient Matrix
B1=[10];//Coefficient Matrix
//Node C //I3=I4+I5
I4=(VC-V3)/R3;//A
//I5=(VC-VD)/R4;//A
//2*VB-4*VC+VD=-12//eqn(2)
A2=[2 -4 1];//Coefficient Matrix
B2=[-12];//Coefficient Matrix
//Node D //I6=I5+I7
I6=VD/R5;//A
I7=I4;//A
//VC-2*VD=-10//eqn(3)
A3=[0 1 -2];//Coefficient Matrix
B3=[-10];//Coefficient Matrix
A=[A1;A2;A3];//Coefficient Matrix
B=[B1;B2;B3];//Coefficient Matrix
X=A^-1*B;//solution Matrix
VB=X(1);//V
VC=X(2);//V
VD=X(3);//V
I2=(VB)/R1;//A
I3=(VB-VC)/R1;//A
I5=(VC-VD)/R4;//A
I4=(-I3-I5);//A
I6=VD/R5;//A
disp("Current in various branches are : ");
disp(I2,"Current I2(A)");
disp(I3,"Current I3(A)");
disp(I4,"Current I4(A)");
disp(I5,"Current I5(A)");
disp(I6,"Current I6(A)");
