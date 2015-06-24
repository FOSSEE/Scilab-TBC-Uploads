//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.2
//calculation of length of the image of an object placed at a distance from a concave mirror.

//given data
//F=-f   focal length(in cm)
//u=-1.5f   object distance(in cm)
h1=2.5; //object height(in cm)

//calculation
//v=1/((1/F)-(1/u))   mirror formula
//v=-3f
//also m=-v/u   lateral magnification formula for mirror
//m=-2   lateral magnification ratio

m=-2; //lateral magnification ratio
h2=m*h1; //lateral magnification formula

if(h2>0)
    disp(h2,'image is erect and is of length(in cm)');
else
    disp(h2,'image is inverted and is of length(in cm)');
end


