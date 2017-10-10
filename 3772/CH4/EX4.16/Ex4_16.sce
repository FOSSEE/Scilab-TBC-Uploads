// Problem no 4.4.16,Page No.107

clc;clear;
close;
F_C=250 //KN //Pt LOad at C
M_D=120 //KNM //moment at Pt D
w=50 //KN/m //u.d.l 0n L_AD
L_DB=2;L_BC=2 //m //Length of DB & BC
L_AD=4 //m //Length of AD
L=8 //m //Length of beam

//Calculations

//LEt R_A and R_D be the reactions at A and D
//R_A+R_D=450

//Taking moment at A
//M_A=0=-R_B*(L_DB+L_AD)+M_D+F_C*L+w*L_AD**2*2**-1
R_B=-(-M_D-F_C*L-w*L_AD**2*2**-1)*(L_DB+L_AD)**-1
R_D=450-R_B

//Shear Force Calculations

//Shear Force at C
V_C=-F_C

//Shear Force at B
V_B1=V_C
V_B2=R_B-F_C

//Shear Force at D
V_D=V_B2

//Shear Force at A
V_A=-F_C+R_B-w*L_AD

//Pt of contralfexure
//Let E be the pt and CE=x
//V_E=0=-F_C+R_B-w*(L_EC-L_DB-L_BC)
L_EC=-((+F_C-R_B)*w**-1-L_DB-  L_BC)
L_ED=L_EC-L_DB-L_BC

//Bending Moment Calculations

//Bending Moment at C
M_C=0

//Bending Moment at B
M_B=-F_C*L_BC

//Bending Moment at D
M_D1=-F_C*(L_BC+L_DB)+R_B*L_DB
M_D2=M_D1-M_D

//Bending Moment at E
M_E=-F_C*L_EC+R_B*(L_ED+L_DB)-w*L_ED**2*2**-1-M_D

//Bending Moment at A
M_A=0

//Pt of contraflexure
//Let F be the pt and CF=y
//M_F=0=- F_C*L_FC+R_B*(L_FC-L_BC)-M_D-w*(L_FC-L_DB-L_BC)
//After substituting values and further simplifying we get equation as
//y**2-14.8*y+54.5=0

a=1
b=-14.8
c=54.4

X=b**2-4*a*c

y1=(-b+X**0.5)*(2*a)**-1
y2=(-b-X**0.5)*(2*a)**-1

//From above two equations y2 is taken into consideration

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_BC,L_BC,L_BC+L_DB,L_BC+L_DB+L_AD,L_BC+L_DB+L_AD]                   
Y1=[V_C,V_B1,V_B2,V_D,V_A,0]
Z1=[0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_BC,L_BC+L_DB,L_BC+L_DB,L_BC+L_DB+L_ED,L_BC+L_DB+L_AD,]
Y2=[M_C,M_B,M_D1,M_D2,M_E,M_A]          
Z2=[0,0,0,0,0,0]
plot(X2,Y2,X2,Z2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
