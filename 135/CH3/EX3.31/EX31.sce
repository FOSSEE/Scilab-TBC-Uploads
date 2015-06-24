// Example 3.31: Output voltage
clc, clear
t=[0:0.1:9*%pi];
vin=15*squarewave(t)-5; // Input wave in volts
vo=vin+25; // in volts
plot2d(t,vo,rect=[0,0,9*%pi,40]);
xtitle("Output voltage","t","vo");