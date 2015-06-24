//Example 1_18
clc;
clear;
close;
format('v',8);
//given data :
V1=10;//V
V2=3;//V
V3=6;//V
R1=3;//ohm
R2=4;//ohm
R3=14;//ohm
R4=8;//ohm
R5=12;//ohm
//Node B : (V1-VB)/R1=VB/R4+(VB-VC-V2)/R2
//VB(1/R4+1/R1+1/R2)+VC*(-1/R2)=V2/R2+V1/R1//eq(1)
A1=[(1/R4+1/R1+1/R2) (-1/R2)];//Coefficient Matrix
B1=[V2/R2+V1/R1];//Coefficient Matrix
//Node C: VC/R5=(VB-VC-V2)/R2+(V3-VC)/R3
//VB*(-1/R2)+VC(1/R2+1/R5+1/R3)=V3/R3-V2/R2//eq(2)
A2=[(-1/R2) (1/R2+1/R5+1/R3)]////Coefficient Matrix
B2=[V3/R3-V2/R2];////Coefficient Matrix
A=[A1;A2];B=[B1;B2];//Coefficient Matrix
X=A^-1*B;//solution of matrix
VB=X(1);//V
VC=X(2);//V
I2=VB/R4;//A
disp(I2,"Current through 8 ohm resistor(A)");
