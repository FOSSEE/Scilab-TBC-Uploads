//Ex_7_1
clc;
clear;
close;
//given data : 
format('v',6);
alfa=0.90;//current gain
ICO=15;//micro A(reverse saturation currenrt)
IE=4;//mA(Emitter currenrt)
IC=ICO*10^-3+alfa*IE;//mA
IB=IE-IC;//mA
IB=IB*1000;//micro A
disp(IC,"Collector Current(mA)");
disp(IB,"Base Current(micro A)");
