clear; clc; close;

Vp = -4;
gmo = 4*10^(-3);

vgs1 = -4;
gm1 = gmo*(1-(vgs1/Vp));
vgs2 = -2.5;
gm2 = gmo*(1-(vgs2/Vp));
vgs3 = -1.5;
gm3 = gmo*(1-(vgs3/Vp));
vgs4 = -1.5;
gm4 = gmo*(1-(vgs4/Vp));
vgs5 = 0;
gm5 = gmo*(1-(vgs5/Vp));

x = [vgs1 vgs2 vgs3 vgs4 vgs5];
y = [gm1 gm2 gm3 gm4 gm5];
plot2d(x,y);
a = gca();
a.thickness = 2;
a.y_location = 'right';
a.x_label.text = 'Vgs';
a.y_label.text = 'gm(S)';
a.title.text = 'gm vs Vgs';
