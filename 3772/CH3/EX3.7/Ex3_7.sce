// Problem 3.7,Page no.57


clc;clear;
close;

//from F.B.D,we get
P_1=50 //KN
P_2=20 //KN
P_3=40 //KN

d=0.02 //mm //Diameter of steel bar
L_1=0.4 //mm
L_2=0.3 //mm
L_3=0.2 //mm
E=210*10**9 //N

//After simplifying Area,we get
A=%pi*10**-4 //m**2 //Area of cross section

//Calculations

sigma_AB=P_1*1000*A //N/m**2
sigma_BA=P_2*1000*A //N/m**2
sigma_CD=P_3*1000*A //N/m**2
dell_L=((P_1*L_1+P_2*L_2+P_3*L_3)*(A*E)**-1)*10**6 //mm

//Result
printf("Total Elongation of Steel bar is %.3f mm",dell_L)
