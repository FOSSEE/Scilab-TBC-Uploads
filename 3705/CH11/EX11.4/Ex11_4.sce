
clear//

//Variable Declaration
A=4.75 //Area in inches^2
Iy_dash=6.27 //Moment of inertia in in^4
Iz_dash=17.4 //Moment of inertia in in^4
ry=0.87 //Radius of Gyration in inches
tan_theta=0.44
P=1 //Force in kips
L=48 //Length in inches
y_dash_B=-4.01 //Y coordinate of point B in inches
z_dash_B=-0.487 //Z coordinate of point B in inches

//Calcualtions
theta=atan(tan_theta) //Angle in radians
Iy=A*ry**2 //Moment of inertia in y in in^4
Iz=Iy_dash+Iz_dash-Iy //Moment of inertia in y in in^4

//Part 1
alpha=atan(Iz*Iy**-1*tan_theta)*180*%pi**-1 //Angle in radians
beta=alpha-(theta*180*%pi**-1) //Angle in degrees

//Part 2
M=P*L*4**-1 //Moment in kip.in
My=M*sin(theta) //Moment in y in kip.in
Mz=M*cos(theta) //Moment in z in kip.in

y_B=y_dash_B*cos(theta)+z_dash_B*sin(theta) //Y coordinate  in inches
z_B=z_dash_B*cos(theta)-y_dash_B*sin(theta) //Z coordinate in inches

//Maximum Bending Stress
sigma_max=My*z_B*Iy**-1-Mz*y_B*Iz**-1 //Maximum Bending Stress in ksi

//Result
printf("\n The angle of inclination of the Neutral axis to the z-axis is %0.1f degrees",beta)
printf("\n The maximum Bending Stress is %0.2f ksi",sigma_max)
