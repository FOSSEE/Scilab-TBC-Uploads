clear; clc; close;

Id_on = 6*10^(-3);
Vgs_on = 8;
Vgs_th = 3;
Rd = 2*10^(3);
Vdd = 12;

k = Id_on/(Vgs_on-Vgs_th);

Vgs1 = Vgs_th;
Id1 = 0;
Vgs2 = 6;
Id2 = 0.24*10^(-3)*(6-3)^2;
Vgs3 = Vgs_on;
Id3 = Id_on;
Vgs4 = 10;
Id4 = 0.24*10^(-3)*(10-3)^2;

x = [0 1 2 Vgs1 Vgs2 Vgs3 Vgs4];
y = [0 0 0 Id1 Id2 Id3 Id4];

yi=smooth([x;y],0.1);
a = gca();
a.thickness = 2;
a.y_location = 'left';
a.x_label.text = 'Vgs';
a.y_label.text = 'Id(mA)';
a.title.text = 'Transfer curve for MOSFET';
a.grid = [1 1];
plot2d(yi(1,:)',yi(2,:)',[3]);

Vgs = Vdd; //at Id = 0
Id = Vdd/Rd;    //at Vgs = 0
x = 0:1:12;
y = (-0.5*10^(-3))*x + 6*10^(-3);
plot2d(x,y);
Idq = 2.75*10^(-3);
Vgsq = 6.4;
Vdsq = Vgsq;
disp(Idq,'Idq(Amperes) = ');
disp(Vdsq,'Vdsq(Volts) = ');

