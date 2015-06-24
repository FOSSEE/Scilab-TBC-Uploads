//Example 3.2
//Known Error
//Page no. 46
clc;clear;close;
l=28;d=5;
v=%pi*l*(d/2)^2;
printf('\nVolume of Cylinder= %f cu. cm',v);
re_d=0.1;re_l=-0.5;
re_v=2*re_d+re_l;               //relative error computation
printf('\n\nRelative error in volume= %f %%',re_v);