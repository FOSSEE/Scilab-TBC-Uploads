//EX2_6 PG-2.28
clc
disp("Refer to the Figure:2.29 shown")
If=25e-3;//current at Q-point
disp("for Q point If=25mA, ie Iq=25mA")
disp("for If=0 A, Vf=Vin=3V at point B")
disp("Now we draw the graph")
disp("The coordinates are Q=(1V,25mA) B=(3V,0mA)")
clf()
x=[ 0 0.5 0.6    1   1.1 ];//x-coordinate
y=[ 0  1   5     25   30 ];//y-coordinate
plot(x,y,)
x1=[0.5   1    3];//x-coordinate
y1=[ 31   25   0];//y-coordinate
plot(x1,y1)
x2=[ 0 1];
y2=[25 25];
plot2d(x2,y2,style=6)
xlabel('Vf (volts)');
ylabel('If (mA)');
title("Piece-wise linear characteristic")
xgrid(color("red"));
disp("Q-point is denoted by the intersection of two lines as shown in the plot")
delta_If=10e-3;//from the graph plotted
delta_Vf=0.9;//from the graph plotted
s=delta_If/delta_Vf;//slope
disp("Therefore load resistance is the reciprocal of the slope ")
Rl=1/s;//load resistance
printf("\n required load resistance is %.0f ohm",Rl)
