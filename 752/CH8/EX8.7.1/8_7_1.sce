clc;
//page no 263
//prob no. 8.7.1
//AM radio Tx=10A when unmodulated & 12A when modulated
I=12;Ic=10;
//Determination of modulation index
m=sqrt(2*(((I/Ic)^2)-1));
disp(m,'The modulation index is');