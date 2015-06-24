//Example 1.9a
clc;
E=0;
for n=0:100
    x(n+1)=(-0.3)^n;
end
for n=0:100
    E=E+x(n+1)^2;
end
if E<%inf then
    disp(E,'The given signal is energy signal with energy=');
else
    disp('The given signal is not energy signal');
end