//clc()
x = [1,2,3,4,5,6,7];
y = [0.5,2.5,2,4,3.5,6,5.5];
n = 7;
s = 0;
ssum = 0;
xsq = 0;
xsum = 0;
ysum = 0;
msum = 0;
for i = 1:7
    s = s + (det(x(1,i)))*(det(y(1,i)));
    xsq = xsq + (det(x(1,i))^2);
    xsum = xsum + det(x(1,i));
    ysum = ysum + det(y(1,i));
end
a = xsum/n;
b = ysum/n;
a1 = (n*s - xsum*ysum)/(n*xsq -xsum^2);
a0 = b - a*a1;
for i = 1:7
    m(i) = (det(y(1,i)) - ysum/7)^2;
    msum = msum +m(i);
    si(i) = (det(y(1,i)) - a0 - a1*det(x(1,i)))^2;
    ssum = ssum + si(i);
end
disp(ysum,"sum of all y =")
disp(m,"(yi - yavg)^2 = ")
disp(msum,"total (yi - yavg)^2 = ")
disp(si,"(yi - a0 - a1*x)^2 = ")
disp(ssum,"total (yi - a0 - a1*x)^2 = ")
sy = (msum / (n-1))^(0.5);
sxy = (ssum/(n-2))^(0.5);
disp(sy,"sy = ")
disp(sxy,"sxy = ")
r2 = (msum - ssum)/(msum);
r = r2^0.5;
disp(r,"r = ")
disp("The result indicate that 86.8 percent of the original uncertainty has been explained by linear model")
