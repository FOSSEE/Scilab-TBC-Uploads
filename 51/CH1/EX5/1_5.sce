clc;
clear;
exec ("C:\Program Files\scilab-5.3.0\bin\TCP\1.5data.sci");
//given u=(3*vel/2)(1-(y/h)^2)
//shearing stress t=vis*(du/dy)
//(du/dy)=-(3*vel*y/h)
//along the bottom of the wall y=-h
//(du/dy)=(3*vel/h)
t=vis*(3*vel/(h/12));//lb/ft^2
disp("lb/ft^2",t,"shaering stress t on bottom wall=")
//along the midplane y=0
//(du/dy)=0
t1=0;//lb/ft^2
disp("lb/ft^2",t1,"shearing stress t on midplane=")
