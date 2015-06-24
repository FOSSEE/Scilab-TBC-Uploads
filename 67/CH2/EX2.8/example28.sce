//Example 2.8
clc;
n=-8:1:8;
for i=1:length(n)
    if n(i)<0 then
        x(i)=2^n(i);
        h(i)=0;
    else
         x(i)=0;
         h(i)=1;
    end
end
y=convol(x,h);
figure
plot2d3(n,h);
title('Impulse responce');
figure
plot2d3(n,x);
title('Input signal');
figure
n1=-16:1:16
plot2d3(n1,y);
title('Output signal');