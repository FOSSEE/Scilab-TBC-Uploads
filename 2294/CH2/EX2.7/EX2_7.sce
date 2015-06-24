//Check for the following system.
//Example 2.7 <i>
clc;
clear ;//a>check whether static or dynamic
t=-10:.1:10;T=length(t)
s=2;
for i=1:length(t)
    x(i)=i;
    y(i)=abs(x(i));
end
if y(2)==x(2)& y(2)==x(1) then
    disp('The given signal is dynamic' );
else 
    disp('the given signal is static');
end
//b>check whether linear or non linear
x1=x;
y1=y;
for i=1:length(t)
    x2(i)=-2;
    y2(i)=abs(x2(i));
end
for i=1:length(t)
z(i)=y1(i)+y2(i);
end
for i=1:length(t)
    y3(i)=abs(x1(i)+x2(i));
end
if z==y3 then
    disp('The given signal is linear');
else
    disp('Not linear');
end
//c>check whether time invariant or not
IP=x(T-s);
OP=y(T-s);
if IP == OP then
disp('the given signal is time invariant');
else 
      disp('The given signal is not time invariant');
    end
//Check for the following systems
//Example 2.7 <ii>
clc;
clear all;//a>check whether static or dynamic
t=0:5;T=length(t);w=1;
s=2;
for i=1:length(t)
    x(i)=i;
    y(i)=x(i)*cos(w*t(i));
end
if y(2)==x(2)& y(2)==x(1) then
    disp('The given signal is dynamic' );
else 
    disp('the given signal is static');
end
//b>check whether linear or non linear
x1=x;
y1=y;
for i=1:length(t)
    x2(i)=2*i;
    y2(i)=x2(i)*cos(w*t(i));
    y3(i)=cos(w*t(i))*(x1(i)+x2(i));
end
z=y1+y2;
if z~=y3 then
    disp('The given signal is not linear');
else
    disp('linear');
end
//c>check whether time invariant or not
IP=x(T-s);
OP=y(T-s);
if IP == OP then
disp('the given signal is time invariant');
else 
      disp('The given signal is not time invariant');
    end




