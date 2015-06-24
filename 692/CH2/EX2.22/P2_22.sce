//EXAMPLE 2.22,impulse response of accumulator

clear;
clc;
d=[1];
t=-1:.01:1;
h=0;
clf();
figure(0);
a=gca();
a.x_location="origin";

for i=1:length(t)
    if t(i)<0 
      h=0;
    else
        h=d;
        plot2d3(i-101,h)
        plot(i-101,h,'.r') 
        xtitle('Impulse Response of accumulator','t','Y');
        a.children.children.thickness=1;
        a.children.children.foreground=2;
    end
end
disp(h,'The impulse response of Accumulator is =')
