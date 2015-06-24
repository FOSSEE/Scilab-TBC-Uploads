clc
clear
//Input data
f1=-12//Focal length of a converging lens in cm
f2=25//Focal length of a diverging lens in cm
d=8//Distance between the lens in cm

//Calculations
C=(1/f1)+(1/f2)+(d/(f1*f2))//Inverse of focal length in cm^-1
D=(d/f2)+1//Constant value
A=(d/f1)+1//Constant value
O1F1=(-D/C)//Poistion of cardinal point in cm
O2F2=(A/C)//Poistion of cardinal point in cm
O1H1=(1-D)/C//Poistion of cardinal point in cm
O2H2=(A-1)/C//Poistion of cardinal point in cm

//Output
printf('Position of cardinal points are O1F1 = %3.2f cm, O2F2 = %3.2f cm, O1H1 = %3.2f cm, O2H2 = %3.2f cm\n The system is in air, therfore, nodal points coincide with unit points',O1F1,O2F2,O1H1,O2H2)
