clc;
clear all;
X=8;  //volt
t =10*1e-6; //second
thita=-90; //degree

//part-a: find x for f= 90 Mhz
f=90*1e+6;  //Hz
x=X*sin((3.14/180)*(6.28*f*t)+(thita));  //volt
disp(+'volt',x,"for part-a x=");

//part-b: find x for f= 102 Mhz 
f=102*1e+6;  //Hz
x=X*sin((180/3.14)*(6.28*f*t)+(thita));  //volt
disp(+'volt',x,"for part-b x=");

disp("This is FM signal modulation")
