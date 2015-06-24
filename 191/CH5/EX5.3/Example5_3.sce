//Divided difference for the functin = ln(x)
clc;
clear;
close();
format('v',9);
x = [1 1.5 1.75 2];
fx = [0 0.40547 0.55962 0.69315];
fab(1) = (fx(2)-fx(1))/(x(2)-x(1));
fab(2) = (fx(3)-fx(2))/(x(3)-x(2));
fab(3) = (fx(4)-fx(3))/(x(4)-x(3));
fabc(1)= (fab(2)-fab(1))/(x(3)-x(1));
fabc(2)= (fab(3)-fab(2))/(x(4)-x(2));
fabcd(1)= (fabc(2)-fabc(1))/(x(4)-x(1));
disp(fx',fab,fabc,fabcd,'Divided difference columns : ')

//We can redraw the table, the existing entries does not change
x(5)=1.1;
fx(5)=0.09531;
fab(4) = (fx(5)-fx(4))/(x(5)-x(4));
fabc(3)= (fab(4)-fab(3))/(x(5)-x(3));
fabcd(2)= (fabc(3)-fabc(2))/(x(5)-x(2));
fabcde(1)=(fabcd(2)-fabcd(1))/(x(5)-x(1));
disp(fx',fab,fabc,fabcd,fabcde,'Divided difference columns after addition of an entry : ')