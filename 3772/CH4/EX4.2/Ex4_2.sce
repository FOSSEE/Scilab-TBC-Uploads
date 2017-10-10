// Problem no 4.4.2,Page No.90

clc;clear;
close;
w_CB=1 //KN/m //u.d.l on Length CB
F_D=2 //KN //Pt Load at D
L_AD=1;L_DC=1 //m //Length of AD & DC
L_CB=2 //m //Length of CB

//Calculations

//Shear Force at B
V_B=0 //KN

//Shear Force at C
V_C=-(w_CB*L_CB)

//Shear Force at D
V_D1=V_C
V_D2=V_C-F_D

//Shear Force at A
V_A=V_D2 

//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C=-w_CB*L_CB**2*2**-1

//Bending Moment at D
M_D=-w_CB*L_CB*(L_CB*2**-1+L_DC)

//Bending Moment at A
M_A=-w_CB*L_CB*(L_CB*2**-1+L_DC+L_AD)-F_D*L_AD

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_CB,L_CB+L_DC,L_CB+L_DC,L_CB+L_DC+L_AD,L_CB+L_DC+L_AD]
Y1=[0,V_C,V_D1,V_D2,V_A,0]
Z1=[0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")


//Plotting the Bending Moment Diagram
subplot(2,1,2)
Y2=[M_B,M_C,M_D,M_A]
X2=[0,L_CB,L_CB+L_DC,L_CB+L_DC+L_AD]
Z2=[0,0,0,0]
plot(X2,Y2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
