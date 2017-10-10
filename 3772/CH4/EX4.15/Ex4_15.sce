// Problem no 4.4.15,Page No.105

clc;clear;
close;
L=8 //m //Length of beam
L_AD=4 //m //Length of AD
w=300 //KN //u.d.l

//Calculations

//Let R_A and R_C be the reactions at A and C
//R_A+R_C=300

//Taking moment at A
//LEt x be the distance from Pt B L_CB=x
//R_C*(L-L_CB)=300*L*2**-1
//R_C=1200*(8-x)**-1
//After substituting values and further simplifying we get
//R_A=300-R_C
//R_A=1200-300*x*(8-x)**-1

//B.M at D
//M_D=R_A*L_AD-w*2**-1*2=0

//Now substituting value of R_A we get
//M_D=4*1200-300*x*(8-x)**-1-300=0

//Further on simplification we get
L_CB=600*225**-1
x=L_CB;
R_C=1200*(8-x)**-1
R_A=(1200-300*x)*(8-x)**-1

//Pt of contraflexure
//Let E be the pt and BE=y
//V_E=0=-R_A*2**-1*L_BE+R_C
L_BE=R_C*(R_A*2**-1)**-1
L_AE=L-L_BE
L_AC=L-L_CB
L_EC=L_BE-L_CB

//Shear Force at B
V_B=0

//Shear Force at C
V_C1=-w
V_C2=-V_C1+R_C

//Shear Force at A
V_A=-w+R_C

//B.M at C
M_C=-w*L_CB

//B.M at E
M_E=-R_A*L_AE+w*L_AE

//B.M at A
M_A=0

//B.M at B
M_B=0

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_CB,L_CB,L_CB+L_AC,L_CB+L_AC]                   
Y1=[V_B,V_C1,V_C2,V_A,0]
Z1=[0,0,0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
X2=[0,L_CB,L_CB+L_EC,L_CB+L_AC]
Y2=[M_B,M_C,M_E,M_A]          
Z2=[0,0,0,0]
plot(X2,Y2,X2,Z2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
