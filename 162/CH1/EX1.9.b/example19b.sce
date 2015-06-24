//Example 1.9b
clc;
for n=0:100
    x(n+1)=2;
end
P=0;
for n=0:100
    P=P+(abs(x(n+1)^2))/100;
end
if P<%inf then
    disp(P,'The given signal is power signal with power =');
else
    disp('The given signal is not power signal');
end