// Problem no 4.4.12,Page No.102

clc;clear;
close;
F_C=5 //KN //Pt Load at C
F_D=4 //KN //Pt Load at D
L_BC=1.25 //m //Length of BC
L_DB=1 //m //Length of DB
L_AD=3 //m //Length of AD
w=2 //KN/m //u.d.l
L=5.25 //m //Length of beam

//Calculations

//Let R_A & R_B be the reactions at A & B
//R_A+R_B=15

//Taking Moment at A
//M_A=0=F_C*L-R_B*(L_DB+L_AD)+F_D*L_AD+w*L_AD**2*2**-1
R_B=-(-F_C*L-F_D*L_AD-w*L_AD**2*2**-1)*(L_DB+L_AD)**-1
R_A=15-R_B

//Shear Force Calculations

//Shear Force at C
V_C=-F_C

//Shear Force at B
V_B1=V_C
V_B2=V_C+R_B

//Shear Force at D
V_D1=V_B2
V_D2=V_B2-F_D

//Shear Force at A
V_A=-(w*L_AD)-F_D-F_C+R_B

//Pt of contraflexure
//Let E be the pt and BE=x
//V_E=0=-F_C+R_B-F_D-w*(L_BE-L_DB)
L_BE=-((F_C-R_B+F_D)*w**-1-L_DB);
x=L_BE;
//Bending Moment Calculations

//Bending Moment at C
M_C=0

//Bending Moment at B
M_B=-F_C*L_BC

//Bending Moment at D
M_D=-F_C*(L_DB+L_BC)-R_B*L_DB

//Bending Moment at A
M_A=-F_C*L+R_B*(L_DB+L_AD)-F_D*L_AD-w*L_AD**2*2**-1

//Bending Moment at E
L_ED=L_BE-L_DB
M_E=-F_C*(L_BC+L_BE)+R_B*L_BE-F_D*(L_BE-L_DB)-w*(L_BE-L_DB)**2*2**-1

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_BC,L_BC,L_BC+L_DB,L_BC+L_DB,L_BC+L_DB+L_AD,L_BC+L_DB+L_AD]                   
Y1=[V_C,V_B1,V_B2,V_D1,V_D2,V_A,0]
Z1=[0,0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_BC,L_BC+L_DB,L_BC+L_DB+L_ED,L_BC+L_DB+L_AD]
Y2=[M_C,M_B,M_D,M_E,M_A]          
Z2=[0,0,0,0,0]
plot(X2,Y2,X2,Z2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
