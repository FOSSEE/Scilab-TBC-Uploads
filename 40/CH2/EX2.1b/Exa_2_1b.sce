//example 2.1b,pg.no.11
n=1:1:10;
xn=6*cos((2*%pi*n')/4);
a=4;
p=0;
for i=1:1:a
    p=p+abs(xn(i)^2);
end
P=p/a;
disp("The average power of given signal is")
P