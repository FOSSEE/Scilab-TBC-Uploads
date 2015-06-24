clc;
clear;
T1=50;//degree farenheit
D=0.73;//in
vol=0.0125;//ft^3
T2=140;//degree farenheit

vis1=2.73/100000;//lb*s/ft^2 at 50 degree farenheit
vis2=0.974/100000;//lb*s/ft^2 at 140 degree farenheit

//for 50 degree farenheit
//if flow is laminar, maximum Re=2100; Re=d*V*D/vis
V1=2100*vis1/(1.94*D/12);
t1=vol/(%pi*((D/12)^2)/4*V1);
//if flow is turbulent, minimum Re=4000
V2=4000*vis1/(1.94*D/12);
t2=vol/(%pi*((D/12)^2)/4*V2);

//for 140 degree farenheit
//if flow is laminar, maximum Re=2100; Re=d*V*D/vis
V3=2100*vis2/(1.94*D/12);
t3=vol/(%pi*((D/12)^2)/4*V3);
//if flow is turbulent, minimum Re=4000
V4=4000*vis2/(1.94*D/12);
t4=vol/(%pi*((D/12)^2)/4*V4);

disp("For laminar flow")
disp("seconds",t1,"The time taken to fill the glass at 50 degree F=")
disp("seconds",t3,"The time taken to fill the glass 100 degree F=")
disp("For turbulent flow:")
disp("seconds",t2,"The time taken to fill the glass at 50 degree F=")
disp("seconds",t4,"The time taken to fill the glass at 140 degree F=")