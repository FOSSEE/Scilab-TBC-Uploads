clear ;
clear x;
clear n;
clc;
//0<a<1
a=.7 ;
n=-10:10;
for i=1:length(n)
    if n(i)>0 then
        x(i)=a^n(i);
    else
        x(i)=a^-n(i);
    end
end
figure
a=gca();
a.x_location="origin"; 
xtitle('x[n] for a<1','n','x[n]');
a.thickness = 2;
plot2d3(n,x)
plot(n,x,'r.')
//a>1
a=1.3;
for i=1:length(n)
    if n(i)>0 then
        x(i)=a^n(i);
    else
        x(i)=a^-n(i);
    end
end
figure
a=gca();
a.x_location="origin"; 
xtitle('x[n] for a>1','n','x[n]');
a.thickness = 2;
plot2d3(n,x)
plot(n,x,'r.')
//|z|>a  then X(z)=z/(z-a) if |z|<1/a then X(z)=-z/(z-1/a)
z=%s;
a=.5;
xx=z/(z-a)-z/(z-(1/a));
figure
plzr(xx);
d=denom(xx);
r=roots(d);
i=1;
for theta=0:1/50:360 
    rx(i)=r(1)*cos(theta);
    ry(i)=r(1)*sin(theta);
    i=i+1;
end
plot(rx,ry)
i=1;
for theta=0:1/50:360 
    rx(i)=r(2)*cos(theta);
    ry(i)=r(2)*sin(theta);
    i=i+1;
end
plot(rx,ry)
//the region between the blue lines is the ROC