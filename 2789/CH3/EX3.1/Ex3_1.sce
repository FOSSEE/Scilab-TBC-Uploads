clear;
clc;

//page no. 83

v_mag = 3;
x = 8;
y = 6;
s = sqrt(x^2 + y^2);
v = v_mag*s;// fps
a_t = v_mag*s*v_mag;// ft/sec^2
a_r = 0;
a = sqrt(a_r^2 + a_t^2);
printf('v = %d fps \n a = %d ft/sec^2',v,a);
