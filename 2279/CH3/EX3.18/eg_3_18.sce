//Example 3.18
clc
clear
t=0:0.01:10;
for i=1:length(t)
    x(i)=sin(i);
    y(i)=2*x(i);
    z(i)=0.5*y(i);
end
if (x==z) then
    disp("The given system is invertible");
else
    disp("the Given system is non-invertible");
end
