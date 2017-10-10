// Problem no 4.4.9,Page No.99

clc;clear;
close;
M_C=40 //KNM //Moment at Pt C
w=20 //KNm //u.d.l on L_AD
L=10 //m //Length of beam
L_CB=5 //m //Length of CB
L_DC=1 //m //Length of DC
L_AD=4 //m //Length of AD

//Calculations

//Let R_A & R_B be the reactions at A & B
//R_A+R_B=80

//Taking Moment at A
//M_A=0=R_B*L-M-w*L_AD**2*2**-1
R_B=(w*L_AD**2*2**-1+M_C)*L**-1
R_A=80-R_B

//Shear Force Calculations

//Shear Force at B
V_B=R_B

//Shear Force at C
V_C=V_B

//Shear Force at D
V_D=V_C

//Shear Force at A
V_A=V_D-w*L_AD

//Pt of contraflexure
//Let E be the pt and BE=x
//V_E=0=R_B-w*(L_BE-L_DC-L_CB)
L_BE=R_B*w**-1+L_DC+L_CB;
x=L_BE

//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C1=R_B*L_CB
M_C2=M_C1-M_C

//Bending Moment at D
M_D=R_B*(L_CB+L_DC)-M_C

//Bending Moment at A
M_A=R_B*L-M_C-w*L_AD**2*2**-1

//Bending Moment at E
L_ED=L_BE-(L_DC+L_CB)
M_E=R_B*L_BE-M_C-w*L_ED**2*2**-1

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_CB,L_CB+L_DC,L_CB+L_DC+L_AD,L_CB+L_DC+L_AD]                   
Y1=[V_B,V_C,V_D,V_A,0]
Z1=[0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_CB,L_CB,L_CB+L_DC,L_CB+L_DC+L_ED,L_CB+L_DC+L_AD]
Y2=[M_B,M_C1,M_C2,M_D,M_E,M_A]          
Z2=[0,0,0,0,0,0]
plot(X2,Y2,X2,Z2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
