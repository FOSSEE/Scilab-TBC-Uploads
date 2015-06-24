////Ex 13.1
clc;
clear;
close;
format('v',6);
deltaVin=4;//V
deltaVout=0.4;//V
Vout=20;//V
LR=(deltaVout/Vout)*100/deltaVin;//%/V(Line Regulation)
disp(LR,"Line Regulation(%/V)");
