//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.1
//calculation of position of the image of an object placed at a distance from the mirror.

//given data
u=-12; //object distance(in cm)
R=20; //radius of curvature of the mirror (in cm)

//calculation
v=1/((2/R)-(1/u)); //mirror formula

if(v>0)
    disp(v,'virtual image is formed on right side of mirror at a distance(in cm)');
else
    disp(v,'real image is formed on left side of mirror at a distance(in cm)');
end
