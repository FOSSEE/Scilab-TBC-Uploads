//Example 1.2
//Relative Maximum Error
//Page no. 5
clc;clear;close;
h=0.001;
x=1;y=1;z=1;dx=0.001;dy=0.001;dz=0.001;
deff('u=f(x,y,z)','u=(5*x*y^2)/z^3')
du=abs(f(x+h,y,z)-f(x,y,z))*dx+abs(f(x,y+h,z)-f(x,y,z))*dy+abs(f(x,y,z+h)-f(x,y,z))*dz;
du=du/h;
Er=du/f(x,y,z)
printf('\nMaximum Error = %.3f\n\nRelative maximum error = %.3f',du,Er)