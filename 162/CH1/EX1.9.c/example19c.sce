//Example 1.9c
clc;
for n=1:100
    x(n)=3*exp(%i*2*n);
end
P=0;
for n=1:100
    P=P+(abs(x(n)^2))/100;
end
if P<%inf then
    disp(P,'The given signal is power signal with power =');
else
    disp('The given signal is not power signal');
end