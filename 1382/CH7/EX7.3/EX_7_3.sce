// Example 7.3:TRANSFORMER WINDING RATIO
clc;
clear;
close;
Vcc=12;//collector vltage
Po=88;//power output in milli watt
Ploss=8;//power losses in milli watt
Pi= Po+Ploss;//input power in milli watt
Ic= Pi/Vcc;//collector current in milli ampere
gm=10;//transconductance in milli ampere per volt
Vb= Ic/(gm);//base VOLTAGE 
TR=Vcc/Vb;//transfomer turn ratio
disp(TR,"transformer turn ratio is")
