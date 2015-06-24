//Example 2.3<v>
//Check whether the following signal is linear or not.
clear;
close;
clc;
T=20;//length of the signal
A=5;
B=4;
for n=1:T
    x(n)=n;
    y(n)=A*x(n)+B;
end
x1=x;
y1=y;
for n=1:T
    x2(n)=2;y2(n)=A*x2(n)+B;
end
z=y1+y2;
for n=1:T
    y3(n)=A*(x1(n)+x2(n))+B;
end
if z==y3 then
    disp('The following signal is linear');
else 
    disp('The following signal is non linear');
end
//Example 2.3<vi>
//Check whether the following signal is linear or not.
clear;
close;
clc;
T=20;//length of the signal
x1(1)=1;
x2(1)=2;
for n=2:T
    x1(n)=n;
    x2(n)=2*n;
    y1(n)=(2*(x1(n)))+(1/x1(n-1));
    y2(n)=(2*(x2(n)))+(1/x2(n-1));
end
z=y1+y2;
for n=2:T
   y3(n)=(2*(x1(n)+x2(n)))+(1/(x1(n-1)+x2(n-1)));
end
if z==y3 then
    disp('The following signal is linear');
else 
    disp('The following signal is non linear');
end
//Example 2.3<vii>
//Check whether the following signal is linear or not.
clear;
close;
clc;
T=20;//length of the signal
for n=1:T
    x(n)=n;
    y(n)=n*x(n);
end
x1=x;
y1=y;
for n=1:T
    x2(n)=2;y2(n)=n*x2(n);
end
z=y1+y2;
for n=1:T
    y3(n)=n*(x1(n)+x2(n));
end
if z==y3 then
    disp('The following signal is linear');
else 
    disp('The following signal is non linear');
end
