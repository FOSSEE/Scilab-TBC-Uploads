// Problem no 4.4.11,Page No.101

clc;clear;
close;
F_C=5 //KN //Force at C
w=2 //KNm //u.d.l on beam
L_BC=3 //m //Length of BC
L_AB=6 //m //Length of AB
L=9 //m //Length of Beam

//Calculations

//Let R_A & R_B be the reactions at A & B
//R_A+R_B=23

//Taking Moment at A
//M_A=0=F_C*L-R_B*L_AB+w*L**2*2**-1
R_B=-(-F_C*L-w*L**2*2**-1)*L_AB**-1
R_A=23-R_B

//Shear Force Calculations

//Shear Force at C
V_C1=0
V_C2=-F_C

//Shear Force at B
V_B=V_C2-w*L_BC**2*2**-1

//Shear Force at A
V_A=F_C*L+R_B*L_AB-w*L**2*2**-1

//Pt of contraflexure
//Let D be the pt And L_AD=x
//V_D=0=R_A+w*L_AD
L_AD=R_A*w**-1
x=L_AD
//Bending Moment Calculations

//Bending Moment at C
M_C=0

//Bending Moment at B
M_B=-F_C*L_BC-w*L_BC**2*2**-1

//Bending Moment at A
M_A=-F_C*L-w*L**2*2**-1+R_B*L_AB

//Bending Moment at D
L_DC=L-L_AD
L_DB=L_DC-L_BC
M_D=-R_A*L_AD+w*L_AD**2*2**-1

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_BC,L_BC+L_AB,L_BC+L_AB]                   
Y1=[V_C2,V_B,V_A,0]
Z1=[0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_BC,L_BC+L_DB,L_BC+L_AB]
Y2=[M_C,M_B,M_D,M_A]          
Z2=[0,0,0,0]
plot(X2,Y2,X2,Z2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")

//The Bending moment in book is incorrect
