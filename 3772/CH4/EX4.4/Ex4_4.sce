// Problem no 4.4.4,Page No.92

clc;clear;
close;
F_C=30;F_D=30;F_E=30 //KN //Pt Load at C,D,E respectively
L_AE=1.5;L_ED=1.5;L_DC=1.5 //m //Length of AE,ED,DC respectively
L_CB=0.5 //m //Length of CB
L_AC=4.5 //m //Length of AC
L_AD=3 //m //Length of AD
w=10 //KN/m //u.d.l
L=5 //m //Length of beam

//Calculations

//Shear Force Calculations

//Shear Force at B
V_B=0 //KN

//Shear Force at C
V_C1=-w*L_CB
V_C2=-w*L_CB-F_C //KN

//Shear Force at D
V_D1=-w*(L_DC+L_CB)-F_C*L_DC
V_D2=-w*(L_DC+L_CB)-F_C-F_D //KN

//Shear Force at E
V_E1=-w*(L_DC+L_CB+L_ED)-F_C*(L_DC+L_ED)
V_E2=-F_C-F_D-F_E-w*(2*L_ED+L_CB)

//Shear Force at A
V_A=-w*L-F_C-F_D-F_E

//Bending Moment Calculations

//Bending Moment at B
M_B=0

//Bending Moment at C
M_C=-w*L_CB**2*2**-1

//Bending Moment at D
M_D=-w*(L_DC+L_CB)**2*2**-1-F_C*L_DC

//Bending Moment at E
M_E=-w*(L_DC+L_CB+L_ED)**2*2**-1-F_C*(L_ED+L_DC)-F_D*L_ED

//Bending Moment at A
M_A=-w*L**2*2**-1-F_C*L_AC-F_D*L_AD-F_E*L_AE

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_CB,L_CB,L_CB+L_DC,L_CB+L_DC,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED+L_AE,L_CB+L_DC+L_ED+L_AE]
Y1=[V_B,V_C1,V_C2,V_D1,V_D2,V_E1,V_E2,V_A,0]
Z1=[0,0,0,0,0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_CB,L_CB+L_DC,L_CB+L_DC+L_ED,L_CB+L_DC+L_ED+L_AE,L_CB+L_DC+L_ED+L_AE]
Y2=[M_B,M_C,M_D,M_E,M_A,0]
Z2=[0,0,0,0,0,0]
plot(X2,Y2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
