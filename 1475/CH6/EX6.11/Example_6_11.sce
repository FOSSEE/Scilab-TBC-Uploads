// Example 6.11 Calculate the five year Moving Average
clc;
clear;
Val=[105 115 100 90 80 95 85 75 60 65 70 58 55 53 60 52 50];
MV1=0;
MV2=0;
MV16=0;
MV17=0;
MV3=Val(1)+Val(2)+Val(3)+Val(4)+Val(5);
MV4=Val(2)+Val(3)+Val(4)+Val(5)+Val(6);
MV5=Val(3)+Val(4)+Val(5)+Val(6)+Val(7);
MV6=Val(4)+Val(5)+Val(6)+Val(7)+Val(8);
MV7=Val(5)+Val(6)+Val(7)+Val(8)+Val(9);
MV8=Val(6)+Val(7)+Val(8)+Val(9)+Val(10);
MV9=Val(7)+Val(8)+Val(9)+Val(10)+Val(11);
MV10=Val(8)+Val(9)+Val(10)+Val(11)+Val(12);
MV11=Val(9)+Val(10)+Val(11)+Val(12)+Val(13);
MV12=Val(10)+Val(11)+Val(12)+Val(13)+Val(14);
MV13=Val(11)+Val(12)+Val(13)+Val(14)+Val(15);
MV14=Val(12)+Val(13)+Val(14)+Val(15)+Val(16);
MV15=Val(13)+Val(14)+Val(15)+Val(16)+Val(17);
MV=[MV1 MV2 MV3 MV4 MV5 MV6 MV7 MV8 MV9 MV10 MV11 MV12 MV13 MV14 MV15 MV16 MV17 ];
MA=MV./5;
disp(MA,"5 year Moving Average",MV,"5 - Year Moving Total",Val,"Values =");