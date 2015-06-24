//Example 2.14:Convolution Integral 
clear;
close;
clc; 
t =-5:1/100:5;
for i=1:length(t)
    if t(i)<0 then  
        h1(i)=0;
        h2(i)=0;
    else
        h1(i)=exp(-2.*t(i));
        h2(i)=2*exp(-t(i));
    end
end
h=convol(h1,h2);
figure
a=gca();
a.x_location="origin";
plot2d(t,h1) 
xtitle('Impulse Response exp(-2*t)','t','h1(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure 
a=gca();
plot2d(t,h2) 
xtitle('Impulse Response 2*exp(-t)','t','h2(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca();
t1=-10:1/100:10;
a.y_location="origin";
plot2d(t1,h) 
xtitle('Impulse Response of the overall system =h1(t)*h2(t)','t','h(t)');
a.children.children.thickness = 3;
a.children.children.foreground= 2;