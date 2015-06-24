clear; clc; close;

Idss = 8*10^(-3);
Vp = -4;


Vgs1 = Vp;
Id1 = 0;
Vgs2 = Vp/2;
Id2 = Idss/4;
Vgs3 = 0;
Id3 = Idss;
x = [Vgs1 Vgs2 Vgs3];
y = [Id1 Id2 Id3];

yi=smooth([x;y],0.1);
a = gca();
a.thickness = 2;
a.y_location = 'right';
a.x_label.text = 'Vgs';
a.y_label.text = 'Id(mA)';
a.title.text = 'gm calculation';
a.grid = [1 1];
plot2d(yi(1,:)',yi(2,:)',[3]);


//part-a 
Vgs = -0.5;
Id_delta = 2.1*10^(-3);
Vgs_delta = 0.6;

gm = Id_delta/Vgs_delta;
disp(gm,'gm(in S) for part a = ');

//part-b
Vgs = -1.5;
Id_delta = 1.8*10^(-3);
Vgs_delta = 0.7;

gm = Id_delta/Vgs_delta;
disp(gm,'gm(in S) for part b = ');

//part-c
Vgs = -2.5;
Id_delta = 1.5*10^(-3);
Vgs_delta = 1;

gm = Id_delta/Vgs_delta;
disp(gm,'gm(in S) for part c = ');
