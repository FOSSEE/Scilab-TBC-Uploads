clc;clear;
//Example 6.3

//given data
Wnet=2;
QL=360;

//calculations
COPR=QL/Wnet/60;//factor of 60 to convert kW to kJ/min
disp(COPR,'coefficient of performance of refrigerator');
QH=QL+Wnet*60;//factor of 60 to convert kW to kJ/min
disp(QH,'heat rejection rate in kJ/min')
