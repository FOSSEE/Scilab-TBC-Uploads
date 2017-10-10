// Problem no 4.4.10,Page No.100

clc;clear;
close;
w=10 //KNm //u.d.l on L_AD
F_D=20 //KN //Pt Load at D
M_C=240 //KNm //moment at Pt C
L_DC=2;L_CB=2 //m //Length of DC and CB
L_AD=4 //m //Length of AD
L=8 //m //Length of Beam

//Calculations

//Calculations

//Let R_A & R_B be the reactions at A & B
//R_A+R_B=60

//Taking Moment at A
//M_A=0=-R_B*L-M_C+F_D*L_AD+w*L_AD**2*2**-1
R_B=-(M_C-F_D*L_AD-w*L_AD**2*2**-1)*L**-1
R_A=60-R_B

//Shear Force Calculations

//Shear Force at B
V_B=R_B

//Shear Force at C
V_C=V_B

//Shear Force at D
V_D1=V_B
V_D2=V_D1-F_D

//Shear Force at A
V_A=V_D2-w*L_AD

//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C1=R_B*L_CB
M_C2=M_C+R_B*L_CB

//Bending Moment at D
M_D=R_B*(L_DC+L_CB)+M_C

//Bending Moment at A
M_A=R_B*L+M_C-w*L_AD**2*2**-1-F_D*L_AD

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
X2=[0,L_CB,L_CB,L_CB+L_DC,L_CB+L_DC+L_AD,L_CB+L_DC+L_AD]
Y2=[M_B,M_C1,M_C2,M_D,M_A,0]          
Z2=[0,0,0,0,0,0]
plot(X2,Y2,X2,Z2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
