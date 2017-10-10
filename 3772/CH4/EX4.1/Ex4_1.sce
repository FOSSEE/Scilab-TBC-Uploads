// Problem no 4.4.1,Page No.89

clc;clear;
close;

F_B=-10 //KN //Force at pt B
F_D=-20 //KN //Force at pt D
w_CB=5 //KN/m //u.d.l at CB
w_AE=40 //KN/m //u.d.l at AE
L_ED=2;L_CB=2 //m //Length of ED & CB
L_CD=1;L_DC=1 //m //Length of CD
L_AE=3 //m //Length of AE
L=8 //m //span of beam


//Calculations

//Shear Force Calculations

//Shear Force at B
V_B=F_B //KN

//Shear Force at C
V_C=F_B-(w_CB*L_CB)

//Shear Force at D
V_D1=V_C
V_D2=V_C+F_D

//Shear Force at E
V_E=V_D2

//Shear Force at A
V_A=V_D2-(w_AE*L_AE)

//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C=F_B*L_CB-w_CB*L_CB**2*2**-1

//Bending Moment at D
M_D=F_B*(L_CB+L_CD)-w_CB*L_CB*(L_CB*2**-1+L_CD)

//Bending Moment at E
M_E=F_B*(L_CB+L_CD+L_ED)-w_CB*L_CB*(L_CB*2**-1+L_CD+L_ED)+F_D*L_ED

//Bending Moment at A
M_A=F_B*L-w_CB*L_CB*(L_CB*2**-1+L_CD+L_ED+L_AE)+F_D*(L_AE+L_ED)-w_AE*(L_AE**2*2**-1)

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_CB,L_CB+L_DC,L_CB+L_DC,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED+L_AE,L_CB+L_DC+L_ED+L_AE]
Y1=[V_B,V_C,V_D1,V_D2,V_E,V_A,0]
Z1=[0,0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

subplot(2,1,2)
//Plotting the Bending Moment Diagram

Y2=[M_B,M_C,M_D,M_E,M_A]
X2=[0,L_CB,L_CB+L_DC,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED+L_AE]
Z2=[0,0,0,0,0]
plot(X2,Y2)
xlabel("Lenght in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
