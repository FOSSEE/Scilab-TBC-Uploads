//Ex 9.7
clc;
clear;
close;
format('v',5);
fL=400;//Hz
fLdash=800;//Hz
K=fL/fLdash;//ratio
disp("Various parameters for retuning are :-");
R=8.2;//kohm
Rdash=K*R;//kohm
disp(Rdash,"Resistance Rdash(kohm)");
disp("Use Rdash=4.2 kohm");
Rf=2*Rdash;//kohm
Ri=2*Rdash;//kohm
disp(Ri,"Resistance Ri(kohm)");
disp(Rf,"Resistance Rf(kohm)");
