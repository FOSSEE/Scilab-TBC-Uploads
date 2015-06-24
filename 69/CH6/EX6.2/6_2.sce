clear; clc; close;

Idss = 8;
Vp = 4;
//point 1
Vgs1 = Vp/2;
Id1 = Idss/4;
//point 2
Id2 = Idss/2;
Vgs2 = 0.3*Vp;


x = [0 1.2 2 4];
y = [8 4 2 0];
yi=smooth([x;y],0.1);
a = gca();
a.thickness = 2;
a.y_location = 'left';
a.x_label.text = 'Vgs';
a.y_label.text = 'Id(mA)';
plot2d(yi(1,:)',yi(2,:)',[3]);
