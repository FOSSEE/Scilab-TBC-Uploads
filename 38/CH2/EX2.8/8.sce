// Caption: Finding per unit system
clear;
close;
clc;
Z_baseH=2400/20.8;
Z_baseX=240/208;

I_x=5.41/208;//per unit at low voltage side

Z_eqH=(1.42+%i*1.82)/115.2;//per unit
disp(Z_eqH,'equivalent impedence referred to high voltage side')