//Example 1.19
//To find input x(n)
//h(n)=[1 2 1], y(n)=[1 5 10 11 8 4 1]
clear;
clc ;
close ;
z=%z;
a=z^6+5*(z^(5))+10*(z^(4))+11*(z^(3))+8*(z^(2))+4*(z^(1))+1;
b=z^6+2*z^(5)+1*z^(4);
x =ldiv(a,b,5);
disp (x,"x(n)=");