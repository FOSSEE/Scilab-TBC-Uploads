clear; clc; close;

Idss = 8*10^(-3);
Vp = 4;
Vdd = 20;
Rd = 4*10^(3);
Rs = 1.8*10^(3);

Vg = 20*10^(3)*(-20)/((20+68)*10^(3));

Vgs1 = 0;
Id1 = Idss;
Vgs2 = Vp/2;
Id2 = Idss/4;
Vgs3 = Vp;
Id3 = 0;
x = [Vgs1 Vgs2 Vgs3];
y = [Id1 Id2 Id3];

yi=smooth([x;y],0.1);
a = gca();
a.thickness = 2;
a.data_bounds = [-5 0;5 8*10^(-3)];
a.y_location = 'middle';
a.x_label.text = 'Vgs';
a.y_label.text = 'Id(mA)';
a.title.text = 'Q-point for network';
a.grid = [1 1];
plot2d(yi(1,:)',yi(2,:)',[3]);


Id1 = 0;
Vgs1 = Vg+Id1*Rs;
Vgs2 = 0;
Id2 = (Vgs2-Vg)/Rs;
Id3 = 4*10^(-3);
Vgs3 = Vg+Id3*Rs;
x = [Vgs1 Vgs2 Vgs3];
y = [Id1 Id2 Id3];
plot2d(x,y);


Vgsq = 1.6;
Idq = 3.1*10^(-3);
Vds = -Vdd+Idq*(Rd+Rs);

disp(Vgsq,'Q-point value of Vgs(found after interpolation) is :');
disp(Idq,'Q-point value of Id(found after interpolation) is :');
disp(Vds,'Vds(Volts) = ');
