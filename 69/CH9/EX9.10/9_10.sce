clear; clc; close;

Cs = 10*10^(-6);
Ce = 20*10^(-6);
Cc = 1*10^(-6);
Rs = 1*10^(3);
R1 = 40*10^(3);
R2 = 10*10^(3);
Re = 1.2*10^(3);
Rc = 4*10^(3);
Rl = 10*10^(3);
Beta = 100;
ro = %inf;
Vcc = 10;
Ve = 2-0.7;

Vb = R2*Vcc/(R2+R1);
Ie = Ve/Re;
re = 26*10^(-3)/(1.083*10^(-3));
x = Beta*re;
Av = -Rc*Rl/((Rc+Rl)*re);
Zi = R1*R2*x/(R1*R2+R2*x+x*R1);
Ri = Zi;
Vi_by_Vs = Ri/(Ri+Rs);
Avs = Av*Vi_by_Vs;
fls = 1/(2*%pi*(Rs+Ri)*Cs);
disp(fls,'Low cutoff frequency is ');

f1 = fls;
f = 1:10:10*f1;
av = (1+(f1./f)^2)^(-1/2);
av1 = -20*log10(f1/f1);
f2 = f1/10;
av2 = -20*log10(f1/f2);
f3 = f1/4;
av3 = -20*log10(f1/f3);
f4 = f1/2;
av4 = -20*log10(f1/f4);


x = [f2 f3 f4 f1];
y = [av2 av3 av4 av1];

gainplot(f,av);
a = gca();
a.y_location = 'left';
a.x_location = 'top';
a.x_label.text = 'frequency';
a.y_label.text = 'Av';
a.title.text = 'Bode';
plot2d(x,y);