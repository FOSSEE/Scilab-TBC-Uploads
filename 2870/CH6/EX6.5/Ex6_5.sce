clc;clear;
//Example 6.5

//given data
QH=500;
TL=30+273;//in C
TH=652+273;//in C

//calculations
nth=1-TL/TH;
disp(nth,'the thermal efficiency of carnot engine');
QL=TL*QH/TH;
QL=round(QL);
disp(QL,'the amount of heat rejected to the sink per cycle in kJ')
