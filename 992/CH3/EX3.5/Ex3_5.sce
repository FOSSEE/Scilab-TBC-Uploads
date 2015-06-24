
//Exa:3.5
clc;
clear;
close;
//Given:
fc=25*10^6;//in Hz
fm=400;//in Hz
A=4;//in volts
wc=2*%pi*fc;
wm=2*%pi*fm;
w=10000;
mf=w/fm;
printf("\n a)Eq:FM \nV=%f*sin(%f*t+%f*sin(%f)*t)",A,wc,mf,wm);
printf("\n\n b)Eq:PM \nV=%f*sin(%f*t+%f*sin(%f)*t)",A,wc,mf,wm);
fm2=5*fm;
mf12=mf/5;
mf22=mf;
wm=2*%pi*fm2;
printf("\n\n c)Eq:FM \nV=%f*sin(%f*t+%f*sin(%f)*t)",A,wc,mf12,wm);
printf("\n\n d)Eq:FM \nV=%f*sin(%f*t+%f*sin(%f)*t)",A,wc,mf22,wm);