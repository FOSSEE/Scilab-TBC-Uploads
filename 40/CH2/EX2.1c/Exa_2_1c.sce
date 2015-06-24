//example 2.1c,pg.no.11
n=1:4;
xn=6*%e^((%i*%pi*n')/2);
a=4;
p=0;
for i=1:1:a
    p=p+abs(xn(i)^2);
end
P=p/a;
disp("The average power of given signal is")
P