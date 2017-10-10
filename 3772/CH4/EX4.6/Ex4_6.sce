// Problem no 4.4.6,Page No.95

clc;clear;
close;
F_C=100 //KN //Pt Load at C
F_E=50 //KN //Pt Load at E
w=20 //KN/m
L_AE=2;L_ED=2;L_DC=2;L_CB=2 //m //Length of AE,ED,DC,CB respectively
L=8 //m //Length of Beam

//Calculations

//Let R_A & R_B be the reactions at A & B
//R_A+R_B=190

//Taking Moment at A
//M_A=-R_B*L+F_C*(3*L_AE)+w*L_DC*(L_DC*2**-1+2*L_ED)+F_E*L_AE=0
R_B=(F_C*(3*L_AE)+w*L_DC*(L_DC*2**-1+2*L_ED)+F_E*L_AE)*L**-1
R_A=190-R_B

//Shear Force Calculations

//Shear Force at B
V_B=R_B

//Shear Force at C
V_C1=R_B
V_C2=R_B-F_C

//Shear Force at D
V_D=V_C2-w*L_DC

//Shear Force at E
V_E1=V_D
V_E2=V_D-F_E

//Shear Force at A
V_A=V_E2

//Point of contraflexure 
//Let F be the point BF=x
//Shear Force at F
//V_F=R_B-F_C-w*(L_BF-L_CB)
L_FB=-((-R_B+F_C)*w**-1-L_CB)
V_F=0

//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C=R_B*L_CB

//Bending Moment at D
M_D=R_B*(L_CB+L_DC)-F_C*L_DC-w*L_DC**2*2**-1

//Bending Moment at E
M_E=R_B*(L_CB+L_DC+L_ED)-F_C*(L_ED+L_DC)-w*L_DC*(L_DC*2**-1+L_ED)

//Bending Moment at A
M_A=R_B*(L_ED+L_DC+L_AE+L_CB)-F_C*(L_ED+L_DC+L_AE)-w*L_DC*(L_DC*2**-1+L_ED+L_AE)-F_E*L_AE

//Bending Moment at F
L_FC=L_CB-L_CB
M_F=R_B*L_FB-F_C*L_FC-w*L_FC**2*2**-1
L_DF=L_DC-L_FC

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_CB,L_CB,L_CB+L_DC,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED+L_AE]
Y1=[V_B,V_C1,V_C2,V_D,V_E1,V_E2,V_A]
Z1=[0,0,0,0,0,0,0,]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_CB,L_CB+L_FC,L_CB+L_DC,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED]
Y2=[M_B,M_C,M_F,M_D,M_E,M_A]
Z2=[0,0,0,0,0,0]
plot(X2,Y2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
