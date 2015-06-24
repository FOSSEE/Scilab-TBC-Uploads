// Example 6.13 Find the trend for the following using 3 year weighted moving average
clc;
clear;
Year=[1 2 3 4 5 6 7 ];
Val=[2 4 5 7 8 10 13];
MV1=0;
MV7=0;
MV2=Val(1)*1+Val(2)*2+Val(3)*1;
MV3=Val(2)*1+Val(3)*2+Val(4)*1;
MV4=Val(3)*1+Val(4)*2+Val(5)*1;
MV5=Val(4)*1+Val(5)*2+Val(6)*1;
MV6=Val(5)*1+Val(6)*2+Val(7)*1;
WMV=[MV1 MV2 MV3 MV4 MV5 MV6 MV7];
W=[1 2 1];
MA=WMV./sum(W);
disp(MA,"3 year Moving Average",WMV,"3 year Weighted Moving Total",Val,"Values =",Year,"Years are ");
