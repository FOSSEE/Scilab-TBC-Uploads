clear; clc; close;

t = 0:0.1:20;
for i = 1:length(t);
    if(t(i)<=5)
        x(i) = (16/5)*t(i);
    elseif(t(i)>=5 & t(i)<=16)
        x(i) = -3.2*t(i) + 32;
    elseif(t(i)>=16 & t(i)<=20)
        x(i) = (16/5)*t(i)-64;
    end 
end

for i = 1:length(t)
    if(x(i)>4)
        y(i)=x(i);
    elseif(x(i)<=4)
        y(i)=4;
    end
end

plot2d(t,y,2,'011','',[0,0,20,16]);

a = gca();
a.x_label.text = 't';
a.y_label.text = 'Vo';
