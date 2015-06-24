// Exa 2.12
clc;
clear;
close;
// Given data
AV= 110.2;// true value of voltage in volt
AI= 5.3;// true value of current in amp
v= 0.2;// uncertainties in voltage in volt
i= 0.6;// uncertainties in current in amp
PLV= v/AV*100;// percentage limiting error to voltage drop
PLC= i/AI*100;// percentage limiting error to current
P= AV*AI;// in watt
disp(P,"The power dissipated in the resistor in watt")
LE_P= (PLV+PLC);// limiting error in the power dissipation in pos and neg
disp(LE_P,"The limiting error in the power dissipation with pos and neg")
disp("Power dissipation")
disp(string(P-P*LE_P/100)+" to "+string(P+P*LE_P/100))
