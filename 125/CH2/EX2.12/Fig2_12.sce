//Caption: Frequency Response
//Fig2.12
//page 60
clc;
close;
[X, Y] = meshgrid(-%pi:.09:%pi);
Z = 2*cos(X)+2*cos(Y);
surf(X,Y,Z);
xgrid(1)