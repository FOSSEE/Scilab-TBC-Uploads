// Problem no 14.5,Page No.330

clc;clear;
close;
H=30 //m //height of Dam
a=2 //m //top width
b=5 //m //bottom width

h=29 //m //height of water
rho_w=9810 //N/m**3 
rho_mason=22560 //N/m**3
sigma1=0 //KN/m**3
sigma2=880 //KN/m**3

//Calculations

//Let L=1 m (length of dam)
L=1

//weight of dam
//W=(a+b)*2**-1*L*H*rho_mason*10**-3
//After substituting values and Further simplifying we get
//W=338.4*(a+b) //equation1

//Pressure at B=0, Sinc etension at base has just been avoided

//Eccentricity
e=b*6**-1  //as sigma1=0

//Pressure at C
//sigma2=W2*b**-1*(1+6*e*b**-1)
//After substituting values and Further simplifying we get
//W=440*b

//From equation1,440*b=338*(a+b)
//b=3.33*a

//the distance of C.Gof dam
//x_bar=(b**2+b*a+a**2)*(3*(b+a))**-1
//After substituting values and Further simplifying we get
//x_bar=1.187*a

//distance of pt where resultant cuts the base
//x=P*W2**-1*H*3**-1
//After substituting values and Further simplifying we get
//x=27.214*a**-1

//Now x_bar+x=2*3**-1*b
//After substituting values and Further simplifying we get
a=(27.17*(2.22-1.187)**-1)**0.5
b=3.33*a

//Result
printf("The top width dam is %.2f",a);printf(" m")
printf("\n The bottom width dam is %.2f",b);printf(" m")


//Plotting the Shear Force Diagram
X1=[0,L,L]
Y1=[sigma2,sigma1,0]
Z1=[0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")
