// Problem no 4.4.13,Page No.103

clc;clear;
close;
F_E=20 //KN //Pt Load at E
F_C=30 //KN //Pt Load at C
F_B=60 //KN //Pt Load at B
L_AB=1.5;L_BC=1.5;L_CD=1.5 //m //Length of AB,BC,CD respectively
L_DE=2.5 //m //Length od DE
L_AD=4.5 //m //Length of AD
L=7 //m //Length of beam
w=30 //KN/m

//Calculations

//LEt R_A and R_D be the reactions at A and D
//R_A+R_D=245

//Taking moment at A
//M_A=0=-R_D*(L_BC+L_AB+L_CD)+F_E*L+w*L_Ad**2*2**-1+F_C*(L_AB+L_BC)+F_B*L_AB
R_D=-(-(F_E*L)-(w*L_AD**2*2**-1)-F_C*(L_AB+L_BC)-F_B*L_AB)*(L_BC+L_AB+L_CD)**-1
R_A=245-R_D

//Shear Force Calculations

//Shear Force at C
V_E1=0
V_E2=-F_E

//Shear Force at D
V_D1=V_E2
V_D2=V_E2+R_D

//Shear Force at C
V_C1=V_D2
V_C2=V_D2-F_C-w*L_CD

//Shear Force at B
V_B1=V_C2
V_B2=-F_E+R_D-F_C-w*(L_BC+L_CD)-F_B

//Shear Force at A
V_A=-F_E-F_C-F_B-w*L_AD+R_D

//Pt of contraflexure
//Let F be the pt and EF=x
//V_F=-F_E-F_C+R_D-w*L_FE+w*L_DE
L_FE=-(F_E+F_C-R_D-w*L_DE)*w**-1
L_FD=L_FE-L_DE
L_FC=L_FE-L_CD-L_DE

//Bending Moment Calculations

//Bending Moment at E
M_E=0

//Bending Moment at D
M_D=-F_E*L_DE

//Bending Moment at C
M_C=-F_E*(L_CD+L_DE)+R_D*L_CD-w*L_CD**2*2**-1

//Bending Moment at F
M_F=-w*L_FD**2*2**-1-F_C*L_FC+R_D*L_FD-F_E*L_FE

//Bending Moment at B
M_B=-F_E*(L_DE+L_CD+L_BC)-F_C*L_BC+R_D*(L_CD+L_BC)-w*(L_BC+L_CD)**2*2**-1

//Bending Moment at A
M_A=-F_E*L+R_D*(L_AD)-F_C*(L_BC+L_AB)-F_B*L_AB-w*(L_AD)**2*2**-1

//Bending Moment at F
M_F=-F_E*L_FE+R_D*L_FD-F_C*L_FC-w*L_FD**2*2**-1

//Pt of contraflexure
//Let G be the pt and GE=y
//M_G=-F_E*L_GE+R_D*(L_GE-L_DE)-F_C*(L_GE-L_DE)**2*2**-1
//After substituting values and further simplifying we get
//y**2-12.9+29.35=0
a=1
b=-12.9
c=29.35

X=b**2-4*a*c

y1=(-b+X**0.5)*(2*a)**-1
y2=(-b-X**0.5)*(2*a)**-1

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,0,L_DE,L_DE,L_DE+L_CD,L_DE+L_CD,L_DE+L_CD+L_BC,L_DE+L_CD+L_BC,L_DE+L_CD+L_BC+L_AB,L_DE+L_CD+L_BC+L_AB]                   
Y1=[V_E1,V_E2,V_D1,V_D2,V_C1,V_C2,V_B1,V_B2,V_A,0]
Z1=[0,0,0,0,0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_DE,L_DE+L_CD,L_DE+L_CD+L_FC,L_DE+L_CD+L_BC,L_DE+L_CD+L_BC+L_AB]
Y2=[M_E,M_D,M_C,M_F,M_B,M_A]          
Z2=[0,0,0,0,0,0]
plot(X2,Y2,X2,Z2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
