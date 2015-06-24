//EX2_5 PG-2.23
clc
If=80e-3;//maximum forward current
Rf=0.4;//dynamic resistance
Vin=0.3;//cut-in voltage for germanium
disp("when forward current is zero then")
Vf=Vin;//voltage across the diode
printf(" voltage across the diode is %1.1f V\n",Vf)
disp("when forward current is 80mA then")
Vf=Vin+If*Rf;
printf(" voltage across the diode is %1.3f V",Vf)
clf()
x=[0 .1 .2 .3 .332];//x-coordinate
y=[0  0  0  0  80];//y-coordinate
plot2d(x,y)
xlabel('voltage across the diode (V) ');
ylabel('current (mA)');
title('Piecewise linear characteristic')
xgrid(color("grey"));
