clc;clear;
//Example 6.4

//given data
COP=2.5;
QH=80000;

//calculations
Wnet=QH/COP;
disp(Wnet,'the power consumed in kJ/h')
QL=QH-Wnet;
disp(QL,'the rate at which heat is absorbed in kJ/h')
