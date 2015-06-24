clc;
clear all;
X=10;  //volt
t =5*1e-6; //second
f=98*1e6;  //Hz
 
//part-a: find x for thita= +90; //degree
thita=90;
x=X*sin(((3.14159/180)*62.8*f*t)+thita);  //volt
disp(+'volt',x,"for part-a x=");

//part-b: find x for thita= -45; //degree
thita=-45;
x=X*sin(((3.14/180)*6.28*f*t)-45); //volt
disp(+'volt',x,"for part-b x=");

disp("This is PM signal modulation")
