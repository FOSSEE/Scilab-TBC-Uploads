//Example 6.36 Deseasonalize the following production data
clc;
clear;
Output=[30 49 50 35 49 50 61 20 35 62 60 25 75 79 65 70];
MV1=0;
MV2=0;
MV16=0;
MV3=Output(1)+Output(2)+Output(3)+Output(4);
MV4=Output(2)+Output(3)+Output(4)+Output(5);
MV5=Output(3)+Output(4)+Output(5)+Output(6);
MV6=Output(4)+Output(5)+Output(6)+Output(7);
MV7=Output(5)+Output(6)+Output(7)+Output(8);
MV8=Output(6)+Output(7)+Output(8)+Output(9);
MV9=Output(7)+Output(8)+Output(9)+Output(10);
MV10=Output(8)+Output(9)+Output(10)+Output(11);
MV11=Output(9)+Output(10)+Output(11)+Output(12);
MV12=Output(10)+Output(11)+Output(12)+Output(13);
MV13=Output(11)+Output(12)+Output(13)+Output(14);
MV14=Output(12)+Output(13)+Output(14)+Output(15);
MV15=Output(16)+Output(13)+Output(14)+Output(15);
MVT=[MV1 MV2 MV3 MV4 MV5 MV6 MV7 MV8 MV9 MV10 MV11 MV12 MV13 MV14 MV15 MV16];
T1=0;
T2=0;
T16=0;
T15=0;
T3=MV3+MV4;
T4=MV4+MV5;
T5=MV5+MV6;
T6=MV6+MV7;
T7=MV7+MV8;
T8=MV8+MV9;
T9=MV9+MV10;
T10=MV10+MV11;
T11=MV11+MV12;
T12=MV12+MV13;
T13=MV13+MV14;
T14=MV14+MV15;
T=[T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 T11 T12 T13 T14 T15 T16];
MA=T./8;
DT=Output-MA;
disp(DT,"Deviation from tend",MA,"4 quarter Moving Total",T,"2 year  Moving Total",MVT,"4 year  Moving Average ",Output,"Output =");
P1=[0 DT(5) DT(9) DT(13)];
P2=[0 DT(6) DT(10) DT(14)];
P3=[DT(3)DT(7) DT(11) 0];
P4=[DT(4) DT(8) DT(12) 0];
RT1=sum(P1);
RT2=sum(P2);
RT3=sum(P3);
RT4=sum(P4);
RT=[RT1 RT2 RT3 RT4];
AM=RT./3;
SS=AM-(0.57);
M=[SS SS SS SS];
DD=Output-M;
GA=sum(AM)/4;
disp(DD,"Deseasonalised Data =",GA,"Grand Average =",SS,"Seasonal @ =",AM,"Average Movement =",RT,"Total of Deviations = ");





