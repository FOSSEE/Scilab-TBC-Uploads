// Example 5.7;apparent resistance of the unknown resistor,actual resistance of the unknown resistor and percentage error
clc;
clear;
// given :
format('v',7)
v=200;//voltage in volts
i=5;//current in mA
tr=v/i;//resistance in kilo ohms
disp("part (a)")
disp(tr,"apparent resistance of unknown resistor is,(kilo-Ohm)=")
S=1000;//sensivity in ohms/V
V1=250;//voltage in volts
rv=V1*S*10^-3;//resistance in kilo ohms
rx=(V1*tr)/(V1-tr);//resistance in kilo ohms
disp("part (b)")
disp(rx,"actual resistance of unknown resistor is,(kilo-Ohm)=")
per=(rx-tr)/rx;//percentage error
disp("part (c)")
disp(per*100,"percentage error is,(%)=")
