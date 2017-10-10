//Example_a_3_24 page no:152
clc;
In=0;
Vx=(1*10)/(2+5+20);
V=4+Vx;
Rth=V/1;
//if we short circuit the terminals a and b we have
Vx=0;
Isc=Vx/4;
disp(In,"the norton current is (in A)");
disp("the current is zero because there is no independent source");
disp(Rth,"the norton resistance is (in ohm)");
