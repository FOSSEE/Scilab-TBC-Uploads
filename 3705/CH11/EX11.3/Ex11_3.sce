
clear//
//

//Variable Declaration
M=32 //Moment  in kN.m
Iy=4.73*10**6 //Moment of inertia in y-axis in mm^4
Iz=48.9*10**6 //Moment of inertia in z-axis in mm^4
Sy=64.7*10**3 //Sectional Modulus in y-axis in mm^3
Sz=379*10**3 //Sectional Modulus in z-axis in mm^3
theta=16.2 //Angle between moment and z-axis in degrees

//Calculations
//Part 1
alpha=atan((Iz*Iy**-1)*tan(theta*%pi*180**-1))*180*%pi**-1 //Angle between NA and z-axis in degrees

//Part 2
My=-M*sin(theta*%pi*180**-1) //Bending Moment in y in kN.m
Mz=-M*cos(theta*%pi*180**-1) //Bending Moment in z in kN.m

sigma_max=My*Sy**-1+Mz*Sz**-1 //Largest Bending Stress in MPa

//Result
printf("\n The angle between the  Neutral Axis and Z-Axis is %0.1f degrees",alpha)
printf("\n The maximum Bending Moment is %0.0f MPa",-sigma_max*10**6)
