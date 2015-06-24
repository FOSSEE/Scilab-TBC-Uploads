//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.4w
//calculation of image distance and focal length of concave mirror

//given data
h1=2; //height of object(in cm)
h2=-5; //height of image(in cm)
u=-12; //object distance in cm

//calculation
v=-(h2/h1)*u //image distance(in cm) using formula of lateral magnification

if(v<0)
    disp(-v,'image is formed on same side of object at a distance(in cm)');
else
    disp(v,'image is formed on opposite side of mirror at a distance(in cm)');
end

f=(u*v)/(u+v); //mirror formula

disp(abs(f),'focal length(in cm) of the given concave mirror is');
