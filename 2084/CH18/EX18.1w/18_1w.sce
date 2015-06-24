//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.1w
//calculation of position and nature of the image of an object placed at a distance from a concave mirror

//given data
u=-8; //object distance(in cm)
f=-10; //focal length of the concave mirror(in cm)

//calculation
v=1/((1/f)-(1/u)); //mirror formula

if(v>0)
    disp(v,'virtual image is formed on right side of mirror at a distance(in cm)');
else
    disp(v,'real image is formed on left side of mirror at a distance(in cm)');
end
