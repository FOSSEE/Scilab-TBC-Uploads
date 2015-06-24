// Caption: Finding minimum magnet volume
clear;
close;
clc;

function [A_m]=area(B_g,B_m)
 A_m=2*B_g/B_m;
endfunction
a=area(0.8,1.0);//from fig
L_m=-0.2*0.8/(4*%pi*10^-7*-40*10^3);

volume=a*L_m;//minimum magnet volume
disp(volume,'minimum magnet volume in cm cube');


