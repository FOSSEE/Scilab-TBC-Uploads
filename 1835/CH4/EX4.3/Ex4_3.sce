//Chapter-4, Illustration 3, Page 134
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//INPUT DATA
TA=48;//Gear teeth
TB=24;//Pinion teeth
m=6;//Module in mm
phi=20;//Pressure angle in degrees

//CALCULATIONS
r=(m*TB)/2;//Pitch circle radius of pinion in mm
R=(m*TA)/2;//Pitch circle radius of gear in mm
RA=sqrt(((((r*sind(phi))/2)+(R*sind(phi)))^2)+((R^2)*(cosd(phi))^2));//Radius of addendum circle of gear in mm
rA=sqrt(((((R*sind(phi))/2)+(r*sind(phi)))^2)+((r^2)*(cosd(phi))^2));//Radius of addendum circle of pinion in mm
addp=rA-r;//Addendum for pinion in mm
addg=RA-R;//Addendum for gear in mm
lp=((R+r)*sind(phi))/2;//Length of path of contact in mm
la=lp/cosd(phi);//Length of arc of contact in mm

//OUTPUT
mprintf('Addendum for pinion is %3.3f mm \n Addendum for gear is %3.2f mm \n Length of arc of contact is %3.3f mm',addp,addg,la)










//================================END OF PROGRAM=============================================
