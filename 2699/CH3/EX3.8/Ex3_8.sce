//EX3_8 PG-3.31
clc
Pdc=500;//for half wave rectifier
%n=40.6;//maximum efficiency for half wave rectifier
disp(" We know that efficiency=Pdc/Pac ")
disp("for Half wave rectifier ")
Pac=Pdc/%n*100;
printf("\n AC input power is %.3f W \n",Pac)
disp("for Full wave rectifier ")
%n=81.2;//maximum efficiency for full wave rectifier 
Pac=Pdc/%n*100;
printf("\n AC input power is %.3f W \n",Pac)
