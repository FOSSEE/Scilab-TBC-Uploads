//Example 2.10 (a)
//To find input h(n)
//X(z)=(z+0.2)/((z+0.5)(z-1);
clear;
clc ;
close ;
z=%z;
a=(z+0.5)*(z-1);
b=z+0.2;
h =ldiv(b,a,4);
disp (h,"h(n)=");