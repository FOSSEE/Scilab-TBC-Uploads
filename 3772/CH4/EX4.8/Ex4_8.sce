// Problem no 4.4.8,Page No.97

clc;clear;
close;
F_C=150 //KN //Pt LOad at C
w=300 //KN //u.v.l
L=6 //m //Length of beam
L_AE=1;L_DC=2;L_CB=1;L_CD=1 //m //Lengthof AE,DC,CB
L_ED=3 //m //Length of ED
L_Ed=2 //m
L_dD=1 //m

//Calculations

//Let R_A & R_B be the reactions at A & B
//R_A+R_B=450

//Taking Moment at A
//M_A=0=R_B*L-F_C*(L_CD+L_ED+L_AE)-w*(2*3**-1*L_ED+L_AE)
R_B=(F_C*(L_DC+L_ED+L_AE)+w*(2*3**-1*L_ED+L_AE))*L**-1
R_A=450-R_B

//Shear Force Calculations

//Shear Force at B
V_B=R_B

//Shear Force at C
V_C1=R_B
V_C2=R_B-F_C

//Shear Force at D
V_D=V_C2

//Shear Force at E
V_E=V_D-w

//Shear Force at A
V_A=V_E

//Pt of contraflexure
//Let F be the pt and EF=x
//Let w1 be the rate of Loading at D we get
w1=w*2*3**-1
//The rate of Loading at distance x is200*x*3**-1

//V_F=0=-R_B+200*x*3**-1*x*2**-1
//After substituting values and simplifying further we get
L_EF=(R_A*3*100**-1)**0.5
x=(R_A*3*100**-1)**0.5;
//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C=R_B*L_CB

//Bending Moment at D
M_D=R_B*(L_CB+L_DC)-F_C*L_DC

//Bending Moment at E
M_E=R_B*(L_CB+L_DC+L_ED)-F_C*(L_DC+L_ED)-w*L_Ed

//Bending Moment at A
M_A=0

//Bending Moment at F
M_F=R_A*(L_AE+L_EF)-200*x*3**-1*x*2**-1*x*3**-1

L_FD=L_ED-L_EF


//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_CB,L_CB,L_CB+L_CD,L_CB+L_CD+L_ED,L_CB+L_CD+L_ED+L_AE,L_CB+L_CD+L_ED+L_AE]                   
Y1=[V_B,V_C1,V_C2,V_D,V_E,V_A,0]
Z1=[0,0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_CB,L_CB+L_DC,L_FD+L_DC+L_CB,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED+L_AE]
Y2=[M_B,M_C,M_D,M_F,M_E,M_A]          
Z2=[0,0,0,0,0,0]
plot(X2,Y2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
