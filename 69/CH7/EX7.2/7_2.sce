clear; clc; close;

Idss = 8*10^(-3);
Vp = -6;
Vdd = 20;
Rd = 3.3*10^(3);
Rs = 1*10^(3);

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

Vgsq = -2.6;
disp(Vgsq,'Q-point value of Vgs(found after interpolation) is :');

Idq = 2.6*10^(-3);
Vds = Vdd - Idq*(Rs+Rd);
Vs = Idq*Rs;
Vg  = 0;
Vd = Vds + Vs;

disp(Idq,'Idq(Amperes) = ');
disp(Vds,'Vds(Volts) = ');
disp(Vd,'Vd(Volts) = ');
disp(Vg,'Vg(Volts) = ');
disp(Vs,'Vs(Volts) = ');
