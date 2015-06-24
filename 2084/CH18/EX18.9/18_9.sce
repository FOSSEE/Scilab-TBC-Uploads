//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.9
//calculation of size of the image of an object placed at a distance from a convex lens

//given data
f=12 //focal length(in cm)
u=-8 //object distance(in cm)
h1=2; //object height(in cm)

//calculation
v=1/((1/f)+(1/u)); //lens formula
m=v/u; //lateral magnification formula for lens
h2=m*h1; //lateral magnification formula for lens

if(h2>0)
    disp(h2,'image is erect and is of length(in cm)');
else
    disp(h2,'image is inverted and is of length(in cm)');
end




