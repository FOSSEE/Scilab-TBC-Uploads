//Example 1.36<f>
//Find whether the given signal is causal or not y(n)=x(n^2).
clear all;
clc;	
n=-10:10;
for i=1:length (n)
x(i)=i;
y(i)=(i.^2) ;
end
causal=%t;
for i=1: length (n)
if n(i)<0 &y(i)~=0 then
causal=%f;
end
end
disp(causal,"The statement that the system is causal is:");
