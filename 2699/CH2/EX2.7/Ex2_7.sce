//EX2_7 PG-2.29
clc
Rl=150;//load resistance
If=35e-3;//current at which Q-point appears
disp("We draw the new DC load line in the plot")
s=-1/Rl;//slope
printf("\n slope is %f \n",s)
x=[ 0 0.5  1   1.1 1.15 ];//x-coordinate
y=[ 0  1  25   35   40 ];//y-coordinate
clf()
plot2d(x,y,style=2) 
x1=[0 1.1 2.6 6.4 ];//x-coordinate
y1=[42  35   25  0];//y-coordinate
plot2d(x1,y1)
x2=[ 0  1  1.1];//x-coordinate
y2=[35 35  35];//y-coordinate
plot2d(x2,y2,style=5)
x3=[0  1  2.6];//x-coordinate
y3=[25 25 25];//y-coordinate
plot2d(x3,y3,style=4)
x4=[1.1 1.1 1.1];
y4=[ 0  10   35 ];
plot2d(x4,y4,style=6)
x5=[2.6 2.6];
y5=[0    25];
plot2d(x5,y5,style=7)
xlabel('Vf (volts)');
ylabel('If (mA)');
title("Piece-wise linear characteristic")
xgrid(color("gray"));
disp("The slope passes through the Q-point so the equation of the load ")
disp("line is If=(-Vf/Rl)+(Vin/Rl)")
disp("Now from the graph we can see that slope =(change in If)/(change in Vf)")
disp("For If=35 mA Vf=1.1 V")
disp("The coordinates are Q=(1.1V,35mA) C=(2.6V,25mA) B=(6.4V,0mA)")
delta_If=10e-3;//change in If
delta_Vf=delta_If/abs(s);//change in Vf and we take only the magnitudeof the slope 
printf("\n change in Vf is %1.1f V \n",delta_Vf)
disp("This is point C corresponding to If=35-10=35mA, as If is change by 10mA" )
disp("and Vf=2.6V ")
disp("We join the Q-point and point C as shown in the plot to get the DC load")
disp(" line we extend the line to intersect point B ")
disp("the voltage at point B is the new supply voltage required")
printf("\n From the plot voltage at point B = 6.7 V")
