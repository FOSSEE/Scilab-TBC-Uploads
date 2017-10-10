
clear//

//Variable Declaration
b=0.060 //Breadth of the section in mm
d=0.03 //Depth of the section in mm
L=1.2 //Length in m
m=80 //Mass in kg
g=9.81 //Acceleration due to gravity in m/s^2
E=200*10**9 //Youngs Modulus in Pa
e=0.015 
h=0.01 //height in m

//Calculations
//Part 1
I=b*d**3*12**-1 //Moment of Inertia in m^4
delta_st=m*g*L**3/(48*E*I) //Mid-span Displacement  in m
n=1+sqrt(1+(2*h/delta_st)) //Impact Factor

//Part 2
P_max=n*m*g //Maximum dynamic load in N at midspan
M_max=P_max*0.5*L*0.5 //Maximum moment in N.m
sigma_max=M_max*e/I //Maximum dynamic Bending Stress in Pa

//Result
printf("\n The impact factor is %0.3f ",n)
printf("\n The maximum dynamic Bending Moment is %0.1f MPa",sigma_max*10**-6)
