// Problem no 14.3,Page No.327

clc;clear;
close;
rho_w=10 //KN/m**3 //Density of water
rho_mason=22.4 //KN/m**3 //Density of mason
H=6 //m //height of dam
a=1 //m //width of top
b=4 //m //bottom width
h=5.5 //m //Weight of water depth 

//Calculations

//Let L=1 m (length of dam)
L=1

//weight of dam
W=(a+b)*2**-1*H*a*rho_mason

//Lateral thrust
P=rho_w*h**2*a*2**-1

//distance of Line of action of W measured from vertical face
x_bar=(b**2+b*a+a**2)*(3*(b+a))**-1

//distance of pt where resultant cuts the base
x=P*W**-1*h*3**-1

//Eccentricity
e=x_bar+x-b*2**-1

//Stress at Pt B
sigma1=W*b**-1*(1-6*e*b**-1)

//stress at Pt C
sigma2=W*b**-1*(1+6*e*b**-1)

//Result
printf("Max stress intensities at the base is %.2f",sigma2);printf(" KN/m**2")
printf("\n Min stress intensities at the base is %.2f",sigma1);printf(" KN/m**2")

//Plotting the Shear Force Diagram

X1=[0,L,L]
Y1=[sigma2,sigma1,0]
Z1=[0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")
