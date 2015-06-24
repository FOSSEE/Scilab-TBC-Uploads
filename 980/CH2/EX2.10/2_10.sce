clc;
clear;
format('v',11);
c=[1,1,1];                                                                      //Given point
x=c(1)*cos(c(2));                                                               //Computing the X coordinate
y=c(1)*sin(c(2));                                                               //Computing the Y coordinate
z=c(3);                                                                         //the Z coordinate
format('v',8)
r=[x,y,z];                                                              
disp(r,'The equivalent rectangular coordinates of the given point are (x, y, z)=');           //Displying the coordinates
