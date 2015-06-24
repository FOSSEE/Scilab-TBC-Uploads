//Chapter-5, Example 5.28, Page 189
//=============================================================================
clc
clear
//INPUT DATA
f=50;//freq in hz
V=100;//volatge in V
L1=0.015;//inductance in branch 1 in henry
L2=0.08;//inductance in branch 2 in henry
R1=2;//resistance of branch 1 in ohms
x1=4.71;//reactance of branch 1 in ohms
R2=1;//resistance of branch 2 in ohms
x2=25.13;//reactance of branch 2 in ohms
Z1=(R1)+(%i*x1);//impedance of branch1 in ohms
Z2=(R2)+(%i*x2);//impedance of branch1 in ohms
I1=V/Z1;//current in branch 1 in A
printf("current in branch 1 in A")
disp(I1);
I2=V/Z2;//current in branch 2 in A
printf("current in branch 2 in A")
disp(I2);
I3=I1+I2;//total current in A
printf("total current in A")
disp(I3);
//note:Answer for real part of total current given in textbook is wrong.Please check the calculations
//=================================END OF PROGRAM======================================================================================================
