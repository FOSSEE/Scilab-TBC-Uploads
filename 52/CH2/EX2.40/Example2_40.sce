//Example 2.40
//To find input x(n)
//h(n)=1 2 3 2, y(n)=[1 3 7 10 10 7 2]
clear;
clc ;
close ;
z=%z;
a=z^6+3*(z^(5))+7*(z^(4))+10*(z^(3))+10*(z^(2))+7*(z^(1))+2;
b=z^6+2*z^(5)+3*z^(4)+2*z^(3);
x =ldiv(a,b,4);
disp (x,"x(n)=");