clear; clc; close;

Idss = 8*10^(-3);
Vp = -4;
Vdd = 16;
Rd = 2.4*10^(3);
Rs = 1.5*10^(3);
R1 = 2.1*10^(6);
R2 = 0.27*10^(6);
//finding Vg
Vg = R2*Vdd/(R1+R2);

//plotting transfer curve

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
a.title.text = 'Q-Point determination';
a.grid = [1 1];
plot2d(yi(1,:)',yi(2,:)',[3]);


Id1 = 0;
Vgs1 = Vg-Id1*Rs;
Id2 = 4*10^(-3);
Vgs2 = Vg-Id2*Rs;
Id3 = 8*10^(-3);
Vgs3 = Vg-Id3*Rs;
x = [Vgs1 Vgs2 Vgs3];
y = [Id1 Id2 Id3];
plot2d(x,y);
a.data_bounds = [-4 0;2 8*10^(-3)];


Vgsq = -1.8;
disp(Vgsq,'Q-point value of Vgs(found after interpolation) is :');

Idq = 2.4*10^(-3);

Vd = Vdd-Idq*Rd;
Vs = Idq*Rs;
Vds = Vdd - Idq*(Rd+Rs);

disp(Idq,'Idq(Amperes) = ');
disp(Vds,'Vds(Volts) = ');
disp(Vd,'Vd(Volts) = ');
disp(Vs,'Vs(Volts) = ');
disp(Vds,'Vds(Volts) = ');
