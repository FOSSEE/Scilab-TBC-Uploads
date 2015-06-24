//example 5.16

clear;
clc;

//Given:
dTf=0.088;//Lowering in freezing point[K]
m2=0.45;//mass of sulphur[gm]
m1=0.09955;//mass of benzene[gm]
Kf=5.07;//cryoscopic constant for benzene[K*Kg/mol]

//To find the molecular formula of sulphur
a=m1*dTf;
b=Kf*m2;
M2=b/a;//molecular weight of sulphur
printf("The molecular weight of sulphur is %f",M2);
x=M2/32;//no. of sulphur atoms
printf("\n The molecular formula of sulphur is S%f",x);