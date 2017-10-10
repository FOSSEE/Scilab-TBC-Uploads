// Problem no 14.4,Page No.329

clc;clear;
close;
H=10 //m //height od dam
a=2 //m //top width
b=5 //m //bottom width
W=25 //KN/m**3 //weight of mason
rho_w=10 //KN/m**3 //density of water

//Calculations

//Let L=1 m (length of dam)
L=1

//weight of dam
W2=(b+a)*H*L*W*2**-1

////Lateral thrust
P=rho_w*H**2*L*2**-1 

//Resultant thrust
R=(P**2+W**2)**0.5

//Distance of Line of action from vertical base
x_bar=(b**2+b*a+a**2)*(3*(b+a))**-1

////distance of pt where resultant cuts the base
x=P*W2**-1*H*3**-1

//Eccentricity
e=x_bar+x-b*2**-1

//Stress at Pt B
sigma1=W2*b**-1*(1-6*e*b**-1)

//stress at Pt C
sigma2=W2*b**-1*(1+6*e*b**-1)

//Result
printf("The Resultant Thrust on the base is %.2f",R);printf(" KN")

//Plotting the Shear Force Diagram
X1=[0,L,L]
Y1=[-sigma2,-sigma1,0]
Z1=[0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")
