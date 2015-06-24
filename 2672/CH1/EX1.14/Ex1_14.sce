//Example 1_14
clc;
clear;
close;
format('v',5);
//given data :
V1=40;//V
V2=44;//V
R1=2;//ohm
R2=4;//ohm
R3=6;//ohm
I1=poly(0,'I1');
I2=poly(0,'I2');
//From Mesh ABEFA//eq1=V1-R1*I1+R2*I2-V2;
//-R1*I1+R2*I2=V2-V1;//eqn(1)
//From Mesh BCDED//eq2=-R2*I2-R3*(I1+I2)+V2;
//R3*I1+(R2+R3)*I2=V2;//eqn(2)
A=[-R1 R2;R3 (R2+R3)];//coefficient matrix
B=[V2-V1;V2];//coefficient matrix
X=A^-1*B;//
I1=X(1);//A
disp(I1,"Current I1(A)");
I2=X(2);//A
disp(I2,"Current I2(A)");
I=I1+I2;//A
disp(I,"Total Current I(A)");
