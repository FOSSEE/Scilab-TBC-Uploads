//Example 1.8
//Find the power of the signal x(t)=Acos(Wot+theeta)
clc;
A=20;
Wo=(2*%pi)/4;
for i=1:50
    x(i)=A*cos(Wo*i);
end
p=0;
for i=1:4
    p=p+(abs(x(i)^2))/4;
end
disp(p,'The power of the given signal is =');