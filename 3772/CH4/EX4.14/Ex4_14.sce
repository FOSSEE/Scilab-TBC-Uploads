// Problem no 4.4.14,Page No.105


clc;clear;
close;
L_DE=2.5;L_BC=2.5 //m //Length of DE & BC
L_CD=5;L_FE=5;L_AB=5 //m //Length of CD & AB
F_C=80;F_B=80 //KN //Pt Load at C & B
w1=16 //KN/m //u.d.l on L_DE
w2=10 //KN/m //u.d.l on L_AB
L=10 //m //Length of beam

//Calculations

//LEt R_A and R_D be the reactions at A and D
//R_A+R_D=250

//Taking moment at A
//M_A=0=w1*L_DE*(L_DE*2**-1+L_CD+L_BC+L_AB)-R_D*(L_CD+L_BC+L_AB)+F_C*(L_BC+L_AB)+F_C*(L_BC+L_AB)+F_B*L_AB+w2*L_AB**2*2**-1
R_D=-(-w1*L_DE*(L_DE*2**-1+L_CD+L_BC+L_AB)-F_C*(L_BC+L_AB)-F_B*(L_AB)-w2*L_AB**2*2**-1)*(L_CD+L_BC+L_AB)**-1
R_A=250-R_D

//Shear Force Calculations

//Shear Force at E
V_E=0

//Shear Force at D
V_D1=-w1*L_DE
V_D2=-w1*L_DE+R_D

//Shear Force at C
V_C1=V_D2
V_C2=V_D2-F_C

//Shear Force at B
V_B1=V_C2
V_B2=V_C2-F_B

//Shear Force at A
V_A1=V_B2-w2*L_AB
V_A2=0

//Bending Moment Calculations

//Bending Moment at E
M_E=0

//Bending Moment at D
M_D=-w1*L_DE**2*2**-1

//Bending Moment at C
M_C=R_D*L_CD-w1*L_DE*(L_DE*2**-1+L_CD)

//Bending Moment at B
M_B=-w1*L_DE*(L_DE*2**-1+L_CD+L_BC)+R_D*(L_CD+L_BC)-F_C*L_BC

//Bending Moment at A
M_A=-w1*L_DE*(L_DE*2**-1+L_CD+L_BC+L_AB)+R_D*(L_CD+L_BC+L_AB)-F_C*(L_BC+L_AB)-F_B*L_AB-w2*L_AB**2*2**-1

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_FE,L_FE,L_DE+L_CD,L_DE+L_CD,L_DE+L_CD+L_BC,L_DE+L_CD+L_BC,L_DE+L_CD+L_BC+L_AB,L_DE+L_CD+L_BC+L_AB]                   
Y1=[V_E,V_D1,V_D2,V_C1,V_C2,V_B1,V_B2,V_A1,V_A2]
Z1=[0,0,0,0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_DE,L_DE+L_CD,L_DE+L_CD+L_BC,L]
Y2=[M_E,M_D,M_C,M_B,M_A]          
Z2=[0,0,0,0,0]
plot(X2,Y2,X2,Z2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
