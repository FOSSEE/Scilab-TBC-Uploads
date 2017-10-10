// Problem 11.5,Page no.277

clc;clear;
close;

b=4 //m //width of %pier
d=3 //m //depth of %pier
e_x=1 //m //distance from y axis
e_y=0.5 //m //distance from x axis
P=80 //KN //Load

//Calculations

A=b*d //m**2 //Area of %pier
I_x_x=b*d**3*12**-1 //m**4 //M.I about x-x axis
I_y_y=d*b**3*12**-1 //m**4 //M.I about y-y axis
M_x=P*e_y //KN*m //Moment about x-x axis
M_y=P*e_x //KN*m //Moment about y-y axis

x=2 //m //Distance between y-y axis and corners A and B
y=1.5 //m ////Distance between x-x axis and corners A and D

//Part-1
//Stress developed at each corner


sigma_A=P*A**-1+M_x*y*I_x_x**-1-M_y*x*I_y_y**-1 //KN/m**2 //stress at A
sigma_B=P*A**-1+M_x*y*I_x_x**-1+M_y*x*I_y_y**-1 //KN/m**2 //stress at B
sigma_C=P*A**-1-M_x*y*I_x_x**-1+M_y*x*I_y_y**-1 //KN/m**2 //stress at C
sigma_D=P*A**-1-M_x*y*I_x_x**-1-M_y*x*I_y_y**-1 //KN/m**2 //stress at D

//Part-2
//Let f be the additional load that should be placed at centre

//sigma_c=F*A**-1 //KN/m**2 //compressive stress

//For no tension in %pier section, compressive stress is equal to tensile stress
sigma_c=10 //KN/m**2
F=sigma_c*A //KN

//Part-3

sigma=F*A**-1 //KN/m**2 //stress due to additional load of 120 KN

sigma_A_1=sigma_A+10 //stress at A
sigma_B_1=sigma_B+10 //stress at B
sigma_C_1=sigma_C+10 //stress at C
sigma_D_1=sigma_D+10 //stress at D

//Result
printf("Stress at each corner are as follows:stress_A %.2f",sigma_A);printf(" KN/m**2")
printf("\n                                     :stress_B %.2f",sigma_B);printf(" KN/m**2")
printf("\n                                     :stress_C %.2f",sigma_C);printf(" KN/m**2")
printf("\n                                     :stress_D %.2f",sigma_D);printf(" KN/m**2(tensile)")

printf("\n\n Additional load that should be placed at centre is %.2f",F);printf(" KN")

printf("\n\n Stresses at the corners with the  additional load in centre are as follows:Stress_A_1 %.2f",sigma_A_1);printf(" KN/m**2")
printf("\n                                                                           :Stress_B_1 %.2f",sigma_B_1);printf(" KN/m**2")
printf("\n                                                                           :Stress_C_1 %.2f",sigma_C_1);printf(" KN/m**2")
printf("\n                                                                           :Stress_D_1 %.2f",sigma_D_1);printf(" KN/m**2")
