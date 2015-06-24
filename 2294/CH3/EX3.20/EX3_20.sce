//Example 3.20
//Find the convolution of h(n)=a^n*u(n) and x(n)=b^n*u(n)
clear;
clc;
close;
n=-10:1/100:10;
a=5;
b=3;
for i =1:length(n) 
    if n(i)<0 then
        h(i)=0;
        x(i)=0;
    else
        h(i)=a^n(i);
        x(i)=b^n(i);
    end;
    end;
    y=convol(h,x);
//    figure
    f=scf(0);
    plot(n,h,'black');
    xtitle('input response1','n','h(n)');
    xs2jpg(0, 'problem29-plot-a.jpg');
//    figure
    f=scf(1);
    plot(n,x,'red');
    xtitle('input response2','n','x(n)');
    xs2jpg(1, 'problem29-plot-b.jpg');
    n1=-20:1/100:20;
//    figure
    f=scf(2);
    plot(n1,y,'green');
    xtitle('output response','n1','y(n)');
    xs2jpg(2, 'problem29-plot-c.jpg');
