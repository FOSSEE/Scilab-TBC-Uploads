clear; clc; close;

Id_on = 3*10^(-3);
Vgs_on = 10;
Vgs_th = 3;
Vt = 3;

k = Id_on/(Vgs_on-Vgs_th)^2;
disp(k,'resulting value of k(A/V^2) is : ');

Vgs1 = 5;
Id1 = k*(Vgs1-Vt)^2;
Vgs2 = 8;
Id2 = k*(Vgs2-Vt)^2;
Vgs3 = 10;
Id3 = k*(Vgs3-Vt)^2;
Vgs4 = 12;
Id4 = k*(Vgs4-Vt)^2;
Vgs5 = 14;
Id5 = k*(Vgs5-Vt)^2;

x = [Vt Vgs1 Vgs2 Vgs3 Vgs4 Vgs5];
y = [0 Id1 Id2 Id3 Id4 Id5];
yi=smooth([x;y],0.1);
a = gca();
a.thickness = 2;
a.y_location = 'left';
a.x_label.text = 'Vgs';
a.y_label.text = 'Id(A)';
plot2d(yi(1,:)',yi(2,:)',[3]);
