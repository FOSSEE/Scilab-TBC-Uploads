//Romberg's Interpolation
clc;
clear;
close();
exec('C:\Users\Pragya\Desktop\scilab\trap.sci', -1);
format('v',10);
funcprot(0);
deff('[y]=f(x)','y=exp(x)');
a = 0;
b = 2;

t(1,1)=trap(f,a,b,0,0);
disp(t(1,1),'T(0,0) : ');

t(2,1)=trap(f,a,b,1,0);
disp(t(2,1),'T(1,0) : ');

t(3,1)=trap(f,a,b,2,0);
disp(t(3,1),'T(2,0) : ');

t(4,1)=trap(f,a,b,3,0);
disp(t(4,1),'T(3,0) : ');

t(2,2)=trap(f,a,b,1,1);
disp(t(2,2),'T(1,1) : ');

t(3,2)=trap(f,a,b,2,1);
disp(t(3,2),'T(2,1) : ');

t(4,2)=trap(f,a,b,3,1);
disp(t(4,2),'T(3,1) : ');

t(3,3)=trap(f,a,b,2,2);
disp(t(3,3),'T(2,2) : ');

t(4,3)=trap(f,a,b,3,2);
disp(t(4,3),'T(3,2) : ');

t(4,4)=trap(f,a,b,3,3);
disp(t(4,4),'T(3,3) : ');

disp(t,'The corresponding Romberg Table is : ');