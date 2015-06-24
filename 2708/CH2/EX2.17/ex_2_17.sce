//Example 2.17 //radii of transparent zone
clc;
clear;
//given data
f=1;//focal length in m
n=1;//order of zone
w=5893D-10;// wavelength used in m
r=sqrt(n*f*w);//radius of transparent zone
disp(r,"radius of tranparent in m")
n=3;//next order
r=sqrt(n*f*w);//radius of transparent zone
disp(r,"radius of tranparent in m")
n=5;//next order
r=sqrt(n*f*w);//radius of transparent zone
disp(r,"radius of tranparent in m")
