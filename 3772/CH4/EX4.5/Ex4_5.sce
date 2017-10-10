// Problem no 4.4.5,Page No.93

clc;clear;
close;

w1=30 //KN/m //u.d.l on L_CB
F_C=120 //KN //Pt Load at C
w2=50 //KN/m //u.d.l on L_AD
L_DC=2;L_CB=2 //m //Length of DC and CB respectively
L_AD=4 //m //Length of AD
L_AB=8;L=8 //m //Length of beam


//Calculations

//Let R_A & R_B be the reactions at A & B
//R_A+R_B=380

//Taking Moment at A
//M_A=-R_B*L+F_C(L_DC+L_AD)+w1*L_CB*(L_CB*2**-1+L_DC+L_AD)+w2*L_AD**2*2**-1=0

//After Rearranging the terms we get
R_B=(F_C*(L_DC+L_AD)+w1*L_CB*(L_CB*2**-1+L_DC+L_AD)+w2*L_AD**2*2**-1)*L**-1
R_A=380-R_B

//Shear Force Calculations

//Shear Force at B
V_B=R_B

//Shear Force at C
V_C1=-w1*L_CB+R_B
V_C2=R_B-w1*L_CB-F_C

//Shear Force at D
V_D=V_C2

//Shear Force at A
V_A=V_D-w2*L_AD

//Point of contraflexure 
//Let E be the point EB=x
//Shear Force at E
//V_E=0=R_B-F_C-w1*L_CB-w2*(L_EB-L_DC-L_CB)
L_EB=-((-R_B+F_C+w1*L_CB)*w2**-1-L_DC-L_CB)
V_E=0

//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C=R_B*L_CB-w1*L_CB**2*2**-1

//Bending Moment at D
M_D=R_B*(L_CB+L_DC)-w1*L_CB*(L_CB*2**-1+L_DC)-F_C*L_DC

//Bending Moment at A
M_A=0

//Bending Moment at E
L_ED=L_EB-(L_DC+L_CB) //m //Length of ED
M_E=-w1*L_CB*(L_ED+L_DC+L_CB*2**-1)-F_C*(L_DC+L_ED)+R_B*L_EB

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,2)
X1=[0,L_CB,L_CB,L_CB+L_DC,L_CB+L_DC+L_AD,L_CB+L_DC+L_AD]
Y1=[V_B,V_C1,V_C2,V_D,V_A,0]
Z1=[0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,1)
X2=[0,L_CB,L_CB+L_DC,L_CB+L_DC+L_ED,L_CB+L_DC+L_AD]
Y2=[M_B,M_C,M_D,M_E,M_A]
Z2=[0,0,0,0,0]
plot(X2,Y2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
