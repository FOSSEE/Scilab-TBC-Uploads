clc;clear;
//Example 6.1

//givrn data
QH=80;
QL=50;

//calculations
Wnet=QH-QL;
disp(Wnet,'net power output in MW')
nth=Wnet/QH;
disp(nth,'the thermal efficiency')
