//clear//
//Example7.2:Digital Differentiator
syms t n;
T = 0.1; //Sampling time in seconds
xct = sin(%pi*t/T)/(%pi*t);
yct  = diff(xct,t);
disp(yct,'yc(t)=');
t = n*T;
xdn = sin(%pi*t/T)/(%pi*t);
ydn = diff(xdn,n);
disp(ydn,'yd[n]=');
hdn = T*ydn;
disp(hdn,'hd[n]=');
//Result
//yc(t) = (10*cos(31.415927*t)/t)-(0.3183099*sin(31.415927*t)/(t^2))
//yd[n]=(10*cos(3.1415927*n)/n)-3.183*sin(3.1415927*n)/(n^2)
//hd[n]=(cos(3.1415927*n)/n)-0.3183*sin(3.1415927*n)/(n^2)
