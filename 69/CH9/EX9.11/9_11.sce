clear; clc; close;

Cs = 2*10^(-6);
Cg = 0.01*10^(-6);
Cc = 0.5*10^(-6);
Rs = 1*10^(3);
Rg = 1*10^(6);
Rsig = 10*10^(3);
Rd = 4.7*10^(3);
Rl = 2.2*10^(3);

Idss = 8*10^(-3);
Vp = -4;
rd = %inf;
Vdd = 20;

Vgsq = -2;
Idq = 2*10^(-3);
gmo = 2*Idss/abs(Vp);
gm = gmo*(1-(Vgsq/Vp));
flg = 1/(2*%pi*(Rsig+Rg)*Cg);
flc = 1/(2*%pi*(Rd+Rl)*Cc);
Req = Rs*(1/gm)/(Rs+(1/gm));
fls = 1/(2*%pi*Req*Cs);
Avmid = -gm*(Rd*Rl/(Rd+Rl));

disp(fls,'Lowest frequency cutoff = ');
disp(Avmid,'midband gain = ');

f1 = fls;
f = .1*f1:10:5*f1;
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


f1 = flg;
//f = .1*f1:10:10*f1;
av = -10*log10(1+(f1./f)^2);
av1 = -20*log10(f1/f1);
f2 = f1/10;
av2 = -20*log10(f1/f2);
f3 = f1/4;
av3 = -20*log10(f1/f3);
f4 = f1/2;
av4 = -20*log10(f1/f4);

x = [f2 f3 f4 f1];
y = [av2 av3 av4 av1];

plot2d(x,y);

f1 = flc;
//f = .1*f1:10:10*f1;
av = -10*log10(1+(f1./f)^2);
av1 = -20*log10(f1/f1);
f2 = f1/10;
av2 = -20*log10(f1/f2);
f3 = f1/4;
av3 = -20*log10(f1/f3);
f4 = f1/2;
av4 = -20*log10(f1/f4);

x = [f2 f3 f4 f1];
y = [av2 av3 av4 av1];
plot2d(x,y);