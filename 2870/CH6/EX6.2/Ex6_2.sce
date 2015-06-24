clc;clear;
//Example 6.2

//given data
Wnet=65;
nth=0.24;
HV=19000;

//calculations
QH=Wnet/nth*2545;//factor of 2545 to convert to Btu/h
m=QH/HV;
disp(m,'the engine must burn at fuel rate in lbm/h')
