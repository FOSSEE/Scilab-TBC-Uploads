clc;
clear;
t = 0:1:10;

for i = 1:length(t)
  x(i) = (t(i)^6) + 2*(t(i)^4)+ 3*(t(i)^2)+4 ;
end

for i = 1:length(t)
  y(i) = ((-t(i))^6)+ 2*((-t(i))^4)+ 3*((-t(i))^2)+4 ;
end

// checking if the function is even x(t)=x(-t)
if x==y then
    disp("the function is even");
end
//odd part of the signal=0.5(x(t)-x(-t))

z=0.5*(x-y);
if z==0 then
    disp("the odd part is 0")
end
