clear; clc; close;

Id_on = 3*10^(-3);
Vgs_on = 10;
Vgs_th = 5;
Vdd = 40;
R1 = 22*10^(6);
R2 = 18*10^(6);
Rs = 1*10^(3);
Rd = 3*10^(3);

Vg = (R2*Vdd)/(R1+R2)
Vgs = 0:1:18;
Id = (Vg-Vgs)/Rs;
plot2d(Vgs,Id);
a = gca();
a.thickness = 2;
a.y_location = 'left';
a.x_label.text = 'Vgs';
a.y_label.text = 'Id(mA)';
a.title.text = 'Q-point for network';
a.grid = [1 1];

k = Id_on/(Vgs_on-Vgs_th)^2;
Vgs = 5:1:18;
Id = k*(Vgs-Vgs_th)^2;
yi=smooth([Vgs;Id],0.1);
plot2d(yi(1,:)',yi(2,:)',[3]);

Idq = 5.2*10^(-3);
Vgsq = 12.5;
Vds = Vdd-Idq*(Rs+Rd);

disp(Idq,'Idq(Amperes) = ');
disp(Vgsq,'Vgsq(Volts) = ')
disp(Vds,'Vds(Volts) = ');

