//Example 1.45://resistance and limiting error
clc;
clear;
R1=50;//in ohms
ER1=0.5;//percentage error
R2=500;//in ohms
ER2=0.5;//percentage error
R3=440;//in ohms
ER3=0.5;//percentage error
R4= (R2*R3)/R1;//unknown resistance in ohms
dR4=(ER1+ER2+ER3);//relative limiting error in unknown resistance
lr= (dR4*R4)/100;//limiting error in ohms
R41= R4+lr;//
R42=R4-lr;//
disp(R41,"VALUE OF RESISTANCE IN OHMS")
disp(R42,"VALUE OF RESISTANCE IN OHMS")
disp(lr,"  limiting error in OHMS is ±")
