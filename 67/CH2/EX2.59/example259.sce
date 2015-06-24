//Example 2.59
clc;
n=-8:1:8;
for i=1:length(n)
    if n(i)<0 then
        x(i)=0;
        h(i)=0;
    else
         x(i)=1;
         h(i)=2^n(i);
    end
end
y=convol(x,h);
figure
a=gca();
plot2d3(n,h);
a.x_location='origin';
a.y_location='origin';
title('Impulse responce');
figure
a=gca();
plot2d3(n,x);
a.x_location='origin';
a.y_location='origin';
title('Input signal');
figure
a=gca();
n1=-16:1:16
plot2d3(n1,y);
a.x_location='origin';
a.y_location='origin';
title('Output signal');