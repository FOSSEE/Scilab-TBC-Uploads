//Determine Response of LTI system whose input is x={0,1,2,3,1} and impulse response h(n)={1,2,1,-1}
clc;
clear;
x={0,1,2,3,1,0,0,0,0,0,0,0,0,0,0,0};
h={0,0,0,0,0,1,2,1,-1,0,0,0,0,0,0,0};
subplot(1,3,1)
plot2d3(x);
subplot(1,3,2)
plot2d3(h);
for n=7:1:16
    s=0
    for m=1:1:6
       s=s+x(m).*h(n-m);
    end
   y(n-6)=s;
end
subplot(1,3,3)
plot2d3(y);
disp(y);