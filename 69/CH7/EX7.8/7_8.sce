clear; clc; close;

Idss = 6*10^(-3);
Vp = -3;
Vdd = 18;
Rd = 1.8*10^(3);
Rs = 150;


Vg = 10*10^(6)*18/((10+110)*10^(6));

Vgs1 = Vp;
Id1 = 0;
Vgs2 = Vp/2;
Id2 = Idss/4;
Vgs3 = 0;
Id3 = Idss;
Vgs4 = 1;
Id4 = Idss*(1-(Vgs4/Vp))^2;
disp(Id4);
x = [Vgs1 Vgs2 Vgs3 Vgs4];
y = [Id1 Id2 Id3 Id4];

yi=smooth([x;y],0.1);
a = gca();
a.thickness = 2;
a.y_location = 'right';
a.x_label.text = 'Vgs';
a.y_label.text = 'Id(mA)';
a.title.text = 'Q-point for network';
a.grid = [1 1];
plot2d(yi(1,:)',yi(2,:)',[3]);


Id1 = 0;
Vgs1 = Vg-Id1*Rs;
Id2 = 3*10^(-3);
Vgs2 = Vg-Id2*Rs;
Id3 = 6*10^(-3);
Vgs3 = Vg-Id3*Rs;
Vgs4 = 0;
Id4 = (Vg - Vgs4)/Rs;
x = [Vgs1 Vgs2 Vgs3 Vgs4];
y = [Id1 Id2 Id3 Id4];
plot2d(x,y);
a.data_bounds = [-3 0;2 10*10^(-3)];




Vgsq = 0.35;
disp(Vgsq,'Q-point value of Vgs(found after interpolation) is :');

Idq = 7.6*10^(-3);

Vds = Vdd - Idq*(Rd+Rs);

disp(Idq,'Idq(Amperes) = ');
disp(Vds,'Vds(Volts) = ');
