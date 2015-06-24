//Numerical Integration
clc;
clear;
close();
format('v',9);
funcprot(0);
deff('[y]=f(x)','y=x*cos(x)');

rec = %pi * f(0)/4;
disp(rec,'Retangular Rule : ');

trap = %pi*(f(0)+f(%pi/4))/8;
disp(trap,'Trapezoidal Rule : ');

sip = %pi*(f(0)+4*f(%pi/8)+f(%pi/4))/(3*8);
disp(sip,'Simpson''s Rule : ');

sip38 = %pi*3*(f(0)+3*f(%pi/12)+3*f(%pi/6)+f(%pi/4))/(12*8);
disp(sip38,'Simpson''s 3/8 Rule : ');

exact = integrate('x*cos(x)','x',0,%pi/4);
disp(exact,'The exact value of intergation is :');
err = exact - rec;
err(2) = exact - trap;
err(3) = exact - sip;
err(4) = exact - sip38;
disp(err,'thus corresponding errors are : ');