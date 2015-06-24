clc;

//page no 31
//problem 2.1
//v(t)=12coos(2pi*2000t)
A=12;   //in volts
disp('V',A,'(a)  The amplitude is idetified as');
w=2*%pi*2000;
disp('rad/s',w,'(b)  The radian frequincy is');
f=w/(2*%pi);
disp('Hz',f,'(c)  The cyclic frequency is');
T=1/f;
disp('s',T,'(d)  The period is');
