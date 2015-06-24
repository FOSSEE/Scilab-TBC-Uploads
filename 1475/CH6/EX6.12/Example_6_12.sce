// Example 6.12 Find the trend for the following
clc;
clear;
Year=[1 2 3 4 5 6 7 ];
Val=[2 4 5 7 8 10 13];
MV1=0;
MV7=0;
MV2=Val(1)+Val(2)+Val(3);
MV3=Val(2)+Val(3)+Val(4);
MV4=Val(3)+Val(4)+Val(5);
MV5=Val(4)+Val(5)+Val(6);
MV6=Val(5)+Val(6)+Val(7);
MV=[MV1 MV2 MV3 MV4 MV5 MV6 MV7];
MA=MV./3;
disp(MA,"3 year Moving Average",MV,"3 Year Moving Total",Val,"Values =",Year,"Years are ");
