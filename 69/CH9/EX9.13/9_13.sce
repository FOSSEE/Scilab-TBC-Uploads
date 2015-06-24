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
re = 24.01;
Vcc = 10;
Ve = 2-0.7;
Cwo = 8*10^(-12);
Cwi = 6*10^(-12);
Cce = 1*10^(-12);
Cbc = 4*10^(-12);
Cbe = 36*10^(-12);
fls = 6.86;

Ri = 1.85*10^(3);
Avmid = -119;
Rthi = Rs*R1*R2*Ri/(Rs*R1*R2+R1*R2*Ri+R2*Ri*Rs+Ri*Rs*R1);
Ci = Cwi+Cbe+(1-Avmid)*Cbc;
fhi = 1/(2*%pi*Rthi*Ci);
Rtho = Rc*Rl/(Rc+Rl);
Co = Cwo+Cce+(1-(1/Avmid))*Cbc;
fho = 1/(2*%pi*Rtho*Co);
fpie = 1/(2*%pi*Beta*re*(Cbe+Cbc));
ft = Beta*fpie;

disp(fhi,'fhi = ');
disp(fho,'fho = ');
disp(fpie,'fbeta = ');
disp(ft,'ft = ');
fle = 500;
flc = 1/(2*%pi*(Rl+Rtho)*Cc);

f1 = fle;
f = 0.1*f1:100:10*f1;
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


f1 = fls;
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

f1 = fhi;
f = 0.1*f1:100:10*f1;
av = (1+(f/f1)^2)^(-1/2);
av1 = -20*log10(f1/f1);
f2 = f1*10;
av2 = -20*log10(f2/f1);
f3 = f1*4;
av3 = -20*log10(f3/f1);
f4 = f1*2;
av4 = -20*log10(f4/f1);

x = [f1 f4 f3 f2];
y = [av1 av4 av3 av2];

gainplot(f,av);
plot2d(x,y);


f1 = fpie;
av1 = -20*log10(f1/f1);
f2 = f1*10;
av2 = -20*log10(f2/f1);
f3 = f1*4;
av3 = -20*log10(f3/f1);
f4 = f1*2;
av4 = -20*log10(f4/f1);

x = [f1 f4 f3 f2];
y = [av1 av4 av3 av2];

plot2d(x,y);


f1 = fho;
av1 = -20*log10(f1/f1);
f2 = f1*10;
av2 = -20*log10(f2/f1);
f3 = f1*4;
av3 = -20*log10(f3/f1);
f4 = f1*2;
av4 = -20*log10(f4/f1);

x = [f1 f4 f3 f2];
y = [av1 av4 av3 av2];

plot2d(x,y);
