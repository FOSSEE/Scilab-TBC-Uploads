//Example 2.2<i>
//Find whether the given signal is causal or not.
clear all;
clc;
n=10;x1(1)=1;x2(1)=1;
for i=2:length(n)
  x1(i)=i; 
   x2(i)=i-1;
   y(i)=x1(i)+1 ./x2(i);
    end
causal=%t;
for i=1:length(n)
    if n(i)<0 &y(i)~=0 then
        causal=%f;
    end
end
disp(causal,"The statement that the system is causal is:");
//Example 2.2<ii>
//Find whether the given signal is causal or not.
clear all;
clc;
n=10;x1(1)=1;x2(1)=-1;
for i=2:length(n)
  x1(i)=i; 
   x2(i)=i-2;
   y(i)=x1(i).*x1(i)+x2(i);
    end
causal=%t;
for i=1:length(n)
    if n(i)<0 &y(i)~=0 then
        causal=%f;
    end
end
disp(causal,"The statement that the system is causal is:");
//Example 2.2<vi>
//Find whether the given signal is causal or not.
clear all;
clc;
n=-10:10;
for i=1:length(n)
  x(i)=i; 
   y(i)=(i.^2);
    end
causal=%t;
for i=1:length(n)
    if n(i)<0 &y(i)~=0 then
        causal=%f;
    end
end
disp(causal,"The statement that the system is causal is:");

