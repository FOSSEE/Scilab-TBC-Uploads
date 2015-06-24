clc
//initialisation of variables
clear
n=200//rpm
N1=18//hp
N2=12//hp
N3=6//hp
R=400//kg/cm^2
w=71620//cm
q=0.2//cm
//CALCULATIONS
D1=((w/(0.2*R))*(N2/n))^(1/3)*10
D2=((w/(0.2*R))*(N3/n))^(1/3)*10
//RESULTS
printf ('Diameter of Shaft = %.f mm',D1)
printf ('\n Diameter of Shaft = %.f mm',D2)
