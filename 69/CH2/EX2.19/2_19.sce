clear; clc; close;

t = 0:0.1:20;
for i=1:int(length(t)/2)
    vi(i) = 20;
end
for i = int(length(t)/2):length(t)
    vi(i) = 0;
end
for i=1:int(length(t)/2)
    vo(i) = 20+5;
end
for i = int(length(t)/2):length(t)
    vo(i) = 0;
end
plot2d(t,vo,2,'011','',[0,-5,21,30]);
a = gca();
a.x_label.text = 't';
a.y_label.text = 'Vo';
