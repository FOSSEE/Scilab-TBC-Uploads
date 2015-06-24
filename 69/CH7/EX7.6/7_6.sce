clear; clc; close;

Idss = 9*10^(-3);
Vp = -3;
Vdd = 20;
Vss = 10;
Rd = 1.8*10^(3);
Rs = 1.5*10^(3);


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
a.title.text = 'Q-point for network';
a.grid = [1 1];
plot2d(yi(1,:)',yi(2,:)',[3]);



Id1 = 0;
Vgs1 = Vss-Id1*Rs;
Id2 = 4*10^(-3);
Vgs2 = Vss-Id2*Rs;
Id3 = 8*10^(-3);
Vgs3 = Vss-Id3*Rs;
x = [Vgs1 Vgs2 Vgs3];
y = [Id1 Id2 Id3];
plot2d(x,y);
a.data_bounds = [-3 0;10 9*10^(-3)];



Vgsq = -0.35;
disp(Vgsq,'Q-point value of Vgs(found after interpolation) is :');

Idq = 6.9*10^(-3);

Vds = Vdd+Vss-Idq*(Rd+Rs);
Vd = Vdd-Idq*Rd;
Vs = Vd-Vds;

disp(Idq,'Idq(Amperes) = ');
disp(Vds,'Vds(Volts) = ');
disp(Vd,'Vd(Volts) = ');
disp(Vs,'Vs(Volts) = ');
disp(Vds,'Vds(Volts) = ');
