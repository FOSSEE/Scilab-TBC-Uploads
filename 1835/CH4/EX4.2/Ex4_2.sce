//Chapter-4, Illustration 2, Page 133
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//INPUT DATA
TA=40;//Wheel A teeth
TB=TA;//Wheel B teeth
m=6;//Module pitch in mm
phi=20;//Pressure angle in degrees
pi=3.141
x=1.75;//Ratio of length of arc of contact to circular pitch

//CALCULATIONS
Cp=m*pi;//Circular pitch in mm
R=(m*TA)/2;//Pitch circle radius of wheel A in mm
r=R;//Pitch circle radius of wheel B in mm
la=x*Cp;//Length of arc of contact in mm
lp=la*cosd(phi);//Length of path of contact in mm
RA=sqrt((((lp/2)+(R*sind(phi)))^2)+((R^2)*(cosd(phi))^2));//Radius of addendum circle of each wheel in mm
add=RA-R;//Addendum in mm

//OUTPUT
mprintf('Addendum of wheel is %3.3f mm',add)









//================================END OF PROGRAM=============================================
