
//To determine the illumination on the ground
//Page 344
clc;
clear;

CP=300;                 //Uniform luminous intensity of a lamp
Vd=6;                   //Vertical distance from the ground to the lamp
Hd=6;                   //Horizontal distance from the ground to the lamp
D=sqrt((Vd^2)+(Hd^2));  //Distance from the lamp to point 6 metres away from the vertical line
theta=atand(Hd/Vd);     //Angle made between D and Vd.

// Illumination
Ec=CP/(Vd^2);           //Vertically beneath the lamp
E6=CP*cosd(theta)/(D^2);//^=6 metres away from the centre

printf('The illumination on the ground :\n')
printf('a)Vertically beneath the lamp : %g lux.\n',Ec)
printf('b)6 metres away from condition a) : %g lux.\n',E6)
