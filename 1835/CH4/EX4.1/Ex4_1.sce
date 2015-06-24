//Chapter-4, Illustration 1, Page 133
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//INPUT DATA
TA=48;//Wheel A teeth
TB=30;//Wheel B teeth
m=5;//Module pitch in mm
phi=20;//Pressure angle in degrees
add=m;//Addendum in mm

//CALCULATIONS
R=(m*TA)/2;//Pitch circle radius of wheel A in mm
RA=R+add;//Radius of addendum circle of wheel A in mm
r=(m*TB)/2;//Pitch circle radius of wheel B in mm
rA=r+add;//Radius of addendum circle of wheel B in mm
lp=(sqrt((RA^2)-((R^2)*(cosd(phi)^2))))+(sqrt((rA^2)-((r^2)*(cosd(phi)^2))))-((R+r)*sind(phi));//Length of path of contact in mm
la=lp/cosd(phi);//Length of arc of contact in mm

//OUTPUT
mprintf('Length of arc of contact is %3.1f mm',la)








//================================END OF PROGRAM=============================================
