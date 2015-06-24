clear; clc; close;

Idss = 8*10^(-3);
Vp = -8;
Vdd = 20;
Rd = 6.2*10^(3);
Rs = 2.4*10^(3);

Vgs1 = Vp;
Id1 = 0;
Vgs2 = Vp/2;
Id2 = Idss/4;
Vgs3 = 0;
Id3 = Idss;
Vgs4 = 2;
Id4 = Idss*(1-(Vgs4/Vp))^2;
x = [Vgs1 Vgs2 Vgs3 Vgs4];
y = [Id1 Id2 Id3 Id4];

yi=smooth([x;y],0.1);
a = gca();
a.thickness = 2;
a.y_location = 'right';
a.x_label.text = 'Vgs';
a.y_label.text = 'Id(mA)';
a.title.text = 'Q-point for the network';
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
a.data_bounds = [-8 0;0 13*10^(-3)];


Vgsq = -4.3;
disp(Vgsq,'Q-point value of Vgs(found after interpolation) is :');

Idq = 1.7*10^(-3);

Vd = Vdd - Idq*(Rd);

disp(Idq,'Idq(Amperes) = ');
disp(Vd,'Vd(Volts) = ');
