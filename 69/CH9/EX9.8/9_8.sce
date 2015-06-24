clear; clc; close;

R = 5*10^(3);
C = 0.1*10^(-6);

f1 = 1/(2*%pi*R*C);
disp(f1,'Break frequency = ');

f = 31.85:10:10*f1;
av = (1+(f1./f)^2)^(-1/2);//-10*log10
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