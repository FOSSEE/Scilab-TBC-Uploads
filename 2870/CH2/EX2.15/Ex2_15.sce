clc;clear;
//Example 2.15

//given values
Ein=2;
n1=0.73;
n2=0.38;//efficency n1 and n2
CinH=0.09;
CinB=0.55;//unit cost of electricity and natural gas

//calculation
QutH= Ein * n1;
disp(QutH,'rate of energy consumption by the heater in kW');
CutH= CinH / n1;
disp(CutH,'the unit cost of utilized energy for heater in USD');
QutB= QutH / n2 ;
disp(QutB,'rate of energy consumption by the burner in kW');
CutB= CinB / n2 / 29.3; // 1 therm = 29.3 kWh
disp(CutB,'the unit cost of utilized energy for burner in USD')
