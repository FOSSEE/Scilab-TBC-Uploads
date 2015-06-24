clc;
clear;
z=0.2*%i*0.155/(0.2+0.155);
v=1;
i=v/z;
ir=real(i);
im=imag(i);
im=round(im*100)/100;
mprintf("the fault current is =%d+(%fj)A",ir,im);
