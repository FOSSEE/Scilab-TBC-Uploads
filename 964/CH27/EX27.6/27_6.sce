clc;
clear;
E=10*10^9;//Pa
I=1.25*10^-5;//m^4
L=3;//m
true=[1.0472 2.0944 3.1416 4.1888];
//part a
h1=3/2;
p=poly(0,"s")
a=2-h1^2*p^2;
x=roots(a);
e=abs(abs(x(1))-true(1))*100/true(1);
disp(x,"p=")
disp(e,"error=")
disp("------------------------------------------------")
//part b
h2=3/3;
p=poly(0,"s")
a=(2-h2^2*p^2)^2 - 1;
x=roots(a);
e(1)=abs(abs(x(1))-true(2))*100/true(2);
e(2)=abs(abs(x(2))-true(1))*100/true(1);
disp(x,"p=")
disp(e,"error=")
disp("-------------------------------------------------")
//part c
h3=3/4;
p=poly(0,"s")
a=(2-h3^2*p^2)^3 - 2*(2-h3^2*p^2);
x=roots(a);
e(1)=abs(abs(x(1))-true(3))*100/true(3);
e(2)=abs(abs(x(2))-true(2))*100/true(2);
e(3)=abs(abs(x(3))-true(1))*100/true(1);
disp(x,"p=")
disp(e,"error=")
disp("-------------------------------------------------")


//part d
h4=3/5;
p=poly(0,"s")
a=(2-h4^2*p^2)^4 - 3*(2-h4^2*p^2)^2 + 1;
x=roots(a);
e(1)=abs(abs(x(1))-true(4))*100/true(4);
e(2)=abs(abs(x(2))-true(3))*100/true(3);
e(3)=abs(abs(x(3))-true(2))*100/true(2);
e(4)=abs(abs(x(4))-true(1))*100/true(1);
disp(x,"p=")
disp(e,"error=")
disp("-------------------------------------------------")
