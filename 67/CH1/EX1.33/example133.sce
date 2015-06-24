//Example 1.33
//Find the power of the signal x(t)=Acos(Wot+theeta)
clc;
A=10;
T=4;
Wo=(2*%pi)/T;
for i=1:T
    x(i)=A*cos(Wo*i);
end
p=0;
for i=1:T
    p=p+(abs(x(i)^2))/T;
end
disp(p,'The power of the given signal is =');