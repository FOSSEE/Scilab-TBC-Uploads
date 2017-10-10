clear;
clc;
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
 r=sqrt(x^2+y^2);
 th = atan(y,x)*180/%pi;
endfunction
 // linear cominations
 // 1 part (1+a)
 a=complex((-0.5),0.866);
 b=1+a;
 [r,th]=rect2pol(real(b),imag(b));
 mprintf("a) magnitude = %f, Angle = %f\n",r,th);
  // 2 part (a^2 - 1)
c=((a^2)-1)
[r,th]=rect2pol(real(c),imag(c));
 mprintf(" b) magnitude = %f, Angle = %f\n",r,th);
  // 3 part (a^2 + a)
d=((a^2)+a)
[r,th]=rect2pol(real(d),imag(d));
 mprintf(" c) magnitude = %f, Angle = %f\n",r,th);
  // 4 part (a^2 + a + 1)
e=((a^2)+a+1)
[r,th]=rect2pol(real(e),imag(e));
 mprintf(" d) magnitude = %f, Angle = %f",r,th);
