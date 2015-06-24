clc;
clear;
function t=f(x,y)
    t=2*x*y+2*x-x^2-2*y^2+72
endfunction
len=8;//m,length
wid=6;//m,width
a=0;
b=len;
n=2;
h=(b-a)/n;
a1=0;
b1=wid;
h1=(b1-a1)/n;

fa=f(a,0);
fb=f(b,0);
fh=f(h,0);
lx1=(b-a)*(fa+2*fh+fb)/(2*n);

fa=f(a,h1);
fb=f(b,h1);
fh=f(h,h1);
lx2=(b-a)*(fa+2*fh+fb)/(2*n);

fa=f(a,b1);
fb=f(b,b1);
fh=f(h,b1);
lx3=(b-a)*(fa+2*fh+fb)/(2*n);

l=(b1-a1)*(lx1+2*lx2+lx3)/(2*n);

avg_temp=l/(len*wid);
disp(avg_temp,"The average termperature is=")
