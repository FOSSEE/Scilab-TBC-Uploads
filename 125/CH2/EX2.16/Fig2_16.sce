//Caption: Frequency Response
//Fig2.16
//page 64
clc;
close;
[X, Y] = meshgrid(-%pi:.05:%pi);
Z = 2-cos(X)-cos(Y);
surf(X,Y,Z);
xgrid(1)