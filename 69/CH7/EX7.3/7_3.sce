clear; clc; close;

Rs = 100;
Idss = 8*10^(-3);
Vp = -6;
Vdd = 20;

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
a.title.text = 'Device characteristics JFET';
a.grid = [1 1];

plot2d(yi(1,:)',yi(2,:)',[3]);


Vgs1 = 0;
Id1 = 0;
Id2 = 4*10^(-3);
Vgs2 = -Id2*Rs;
Id3 = 8*10^(-3);
Vgs3 = -Id3*Rs;
x = [Vgs1 Vgs2 Vgs3];
y = [Id1 Id2 Id3];
plot2d(x,y);




Idq = 6.4*10^(-3);
Vgsq = -0.64;
disp('From the figure,for part a  i.e Rs=100Kohm,we get ');
disp(Idq,'Idq(Amperes) = ');
disp(Vgsq,'Vgsq(Volts) = ');

//part b

Rs = 10*10^(3);
Idss = 8*10^(-3);
Vp = -6;
Vdd = 20;



Vgs1 = 0;
Id1 = 0;
Id2 = 4*10^(-3);
Vgs2 = -Id2*Rs;
Id3 = 8*10^(-3);
Vgs3 = -Id3*Rs;
x = [Vgs1 Vgs2 Vgs3];
y = [Id1 Id2 Id3];
plot2d(x,y);
a.data_bounds = [-8 0;0 8*10^(-3)];
Idq = 0.46*10^(-3);
Vgsq = -4.6;
disp('From the figure,for part b  i.e Rs=10Kohm,we get ')
disp(Idq,'Idq(Amperes) = ');
disp(Vgsq,'Vgsq(Volts) = ');
