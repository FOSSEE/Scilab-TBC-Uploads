// Problem no 4.4.7,Page No.96

clc;clear;
close;
w=20 //KN/m //u.d.l on Length  CB
F_D= 50 //KN //Pt Load at D
L_CB=5 //m //Length of CB
L_DC=3 //M //Length of DC
L_AD=2 //m //Length of AD
L=10 //m //Length of Beam

//Calculations

theta=atan(4*3**-1)*(180*%pi**-1)
F_DV=F_D*sin(theta*%pi*180**-1) //Force at Pt D vertically
F_DH=F_D*cos(theta*%pi*180**-1) //Force at pt D horizontally

//Let R_A & R_B be the reactions at A & B
//R_A+R_B=140

//Taking Moment at A
//M_A=0=-R_B*L+w*L_CB*(L_CB*2**-1+L_DC+L_AD)+F_DV*L_AD
R_B=(w*L_CB*(L_CB*2**-1+L_DC+L_AD)+F_DV*L_AD)*L**-1
R_A=140-R_B

//Shear Force Calculations

//Shear Force at B
V_B=R_B

//Shear Force at C
V_C=V_B-w*L_CB

//Shear Force at D
V_D1=V_C
V_D2=V_C-F_DV

//Shear Force at A
V_A=V_D2

//Pt of Contraflexure
//Let E be the pt And BE=x
//V_E=0=R_B-w*x
x=R_B*w**-1;
L_BE=R_B*w**-1

//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C=R_B*L_CB-w*L_CB**2*2**-1

//Bending Moment at D
M_D=R_B*(L_CB+L_DC)-w*L_CB*(L_CB*2**-1+L_DC)

//Bending Moment at A
M_A=R_B*L-w*L_CB*(L_CB*2**-1+L_DC+L_AD)-F_DV*L_AD

//Bending Moment at E
M_E=R_B*L_BE-w*L_BE**2*2**-1

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_CB,L_CB+L_DC,L_CB+L_DC,L_CB+L_DC+L_AD]                   
Y1=[V_B,V_C,V_D1,V_D2,V_A]
Z1=[0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_BE,L_CB,L_CB+L_DC,L_CB+L_DC+L_AD]
Y2=[M_B,M_E,M_C,M_D,M_A]          
Z2=[0,0,0,0,0,0]
plot(X2,Y2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
