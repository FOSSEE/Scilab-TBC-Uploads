
clear//
//

//NOTE:The figure mentions the unit of length as ft which is incorrect
//Variable Declaration
L=30 //Length in m
m=2000 //Mass in kg
v=2 //Velocity in m/s
E=10**5 //Youngs Modulus in MPa
A=600 //Area in mm^2
g=9.81 //Acceleration due to gravity in m/s^2

//Calculations
k=E*A*L**-1 //Stifness of the cable in N/m

//Applying the Work-Energy principle 
delta_max=sqrt((0.5*m*v**2)*(0.5*k)**-1) //Maximum Displacement in m

P_max=k*delta_max+m*g //Maximum force in N

//Result
printf("\n The maximum force is %0.1f kN",P_max*10**-3)
