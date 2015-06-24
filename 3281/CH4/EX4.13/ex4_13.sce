//Page Number: 215
//Example 4.13
clc;
//Given
p=100; //mW
//As 2 and 3 are matched terminals
x=1/2;
y=1/sqrt(2);
s=[x -x y;-x 0 y;y y 0];

//Power delivered
//Port 1
p1=p*(1-s(1,1)^2);
disp('mW',p1,'Power at port 1:');

//Port2
p2=p*s(2,1)^2;
disp('mW',p2,'Power at port 2:');

//Port 3
p3=p*s(3,1)^2;
disp('mW',p3,'Power at port 3:');
