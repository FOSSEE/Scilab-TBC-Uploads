// Problem no 4.4.3,Page No.91

clc;clear;
close;
AC=5000 //N/m //u.v.l
L_AB=4 //m //Length of AB

//Calculations

//Consider a section at Distance x from B
//DB=x
//By similar triangles (triangle ABC and BDE) we get

//Shear Force at x
//F_x=-DB*DE*2**-1
//After substituting values in above equation we get
//F_x=625*x**2

//shear Force at B where x=0
V_B=0

//shear Force at A where x=L_AB=4
V_A=625*L_AB**2

//Bending Moment Calculation

//M_x=DB*DE*DB*3**-1*2**-1
//Substituting values in above equation we get
//M_x=-625*x**3*3**-1

//Bending Moment at B where x=0
M_B=0

//Bending Moment at A where x=L_AB=4
M_A=-625*L_AB**3*3**-1

//Result
printf("The Shear Force and Bending Moment Diagrams are the results")

//Plotting the Shear Force Diagram
subplot(2,1,1)
X1=[0,L_AB]
Y1=[V_B,V_A]
Z1=[0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")

//Plotting the Bending Moment Diagram
subplot(2,1,2)
Y2=[M_B,M_A]
X2=[0,L_AB]
Z2=[0,0]
plot(X2,Y2)
xlabel("Length in m")
ylabel("Bending Moment in kN.m")
title("the Bending Moment Diagram")
