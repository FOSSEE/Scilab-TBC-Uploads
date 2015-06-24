//example 2.1.a,pg no.11
for i=1:1:50
    x(1,i)=3*(0.5)^(i-1);
end
//summation of x
E=0
for i=1:1:50
    E=E+x(1,i)^2;
end
disp("the energy of given signal is")
E