//Example 1.34
//Find energy of x(t)=8exp(2+i4pi)t
clc;
E=0;
for t=1:100
    x(t)=8*exp((2+(%i*4*%pi))*t);
end
for t=1:100
    E=E+x(t)^2;
end