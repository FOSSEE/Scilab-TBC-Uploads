//Example 1.35<a>
//Find whether the given system is causal or not y(t)=x*sin(t).
clear all;
clc;
t=-10:10;
x=2;
for i=1:length(t)
x3(i)=x*sin(t(i));
end
causal=%t;
for i=1:length (t)
if t(i)<0 & x3(i)~=0 then
noncausal=%f;
end
end
disp (noncausal,"The statement that the system is noncausal is");
