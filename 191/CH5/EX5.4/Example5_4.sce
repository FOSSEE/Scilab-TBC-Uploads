//Polynomial Interpolation: Divided Differnce form
clc;
clear;
close();
format('v',8);
x = [1 1.5 1.75 2];
fx = [0 0.40547 0.55962 0.69315];
fab(1) = (fx(2)-fx(1))/(x(2)-x(1));
fab(2) = (fx(3)-fx(2))/(x(3)-x(2));
fab(3) = (fx(4)-fx(3))/(x(4)-x(3));
fabc(1)= (fab(2)-fab(1))/(x(3)-x(1));
fabc(2)= (fab(3)-fab(2))/(x(4)-x(2));
fabcd(1)= (fabc(2)-fabc(1))/(x(4)-x(1));

x(5)=1.1;
fx(5)=0.09531;
fab(4) = (fx(5)-fx(4))/(x(5)-x(4));
fabc(3)= (fab(4)-fab(3))/(x(5)-x(3));
fabcd(2)= (fabc(3)-fabc(2))/(x(5)-x(2));
fabcde(1)=(fabcd(2)-fabcd(1))/(x(5)-x(1));
disp(fabcde,fabcd,fabc,fab,fx','Divided difference columns : ')

x1 = poly(0,'x1');
p3x = fx(1)+fab(1)*(x1-x(1))+fabc(1)*(x1-x(1))*(x1-x(2))+fabcd(1)*(x1-x(1))*(x1-x(2))*(x1-x(3));
p3=horner(p3x,1.3);
disp(p3,'The interpolated value at 1.3 using p3(x) is : ')

p4x = p3x + fabcde(1)*(x1-x(1))*(x1-x(2))*(x1-x(3))*(x1-x(4));
p4=horner(p4x,1.3);
disp(p4,'The interpolated value at 1.3 using p4(x) is : ')
