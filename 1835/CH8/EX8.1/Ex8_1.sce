//CHAPTER 8 ILLUSRTATION 1 PAGE NO 221
//TITLE:BALANCING OF ROTATING MASSES
pi=3.141
clc
clear
mA=12//       mass of A in kg
mB=10//       mass of B in kg
mC=18//       mass of C in kg
mD=15//       mass of D in kg
rA=40//       radius of A in mm
rB=50//       radius of B in mm
rC=60//       radius of C in mm
rD=30//       radius of D in mm
theta1=0//    angle between A-A in degrees
theta2=60//   angle between A-B in degrees
theta3=130//  angle between A-C in degrees
theta4=270//  angle between A-D in degrees
R=100//  radius at which mass to be determined in mm
//====================================================
Fh=(mA*rA*cosd(theta1)+mB*rB*cosd(theta2)+mC*rC*cosd(theta3)+mD*rD*cosd(theta4))/10//    vertical component value in kg cm
Fv=(mA*rA*sind(theta1)+mB*rB*sind(theta2)+mC*rC*sind(theta3)+mD*rD*sind(theta4))/10//   horizontal component value in kg cm
mb=(Fh^2+Fv^2)^.5/R*10//     unbalanced mass in kg
theta=atand(Fv/Fh)//   position in degrees 
THETA=180+theta//       angle with mA
printf('magnitude of unbalaced mass=%.3f kg\n angle with mA= %.3f degrees',mb,THETA)
