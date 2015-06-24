// Example.37  find the seasonal indices by the method 
clc;
clear;
Output=[101 93 79 98 106 96 83 103 110 101 88 106];
MV1=0;
MV2=0;
MV12=0;
MV3=Output(1)+Output(2)+Output(3)+Output(4);
MV4=Output(2)+Output(3)+Output(4)+Output(5);
MV5=Output(3)+Output(4)+Output(5)+Output(6);
MV6=Output(4)+Output(5)+Output(6)+Output(7);
MV7=Output(5)+Output(6)+Output(7)+Output(8);
MV8=Output(6)+Output(7)+Output(8)+Output(9);
MV9=Output(7)+Output(8)+Output(9)+Output(10);
MV10=Output(8)+Output(9)+Output(10)+Output(11);
MV11=Output(9)+Output(10)+Output(11)+Output(12);
MVT=[MV1 MV2 MV3 MV4 MV5 MV6 MV7 MV8 MV9 MV10 MV11 MV12];
T1=1;
T2=1;
T12=1;
T11=1;
T3=MV3+MV4;
T4=MV4+MV5;
T5=MV5+MV6;
T6=MV6+MV7;
T7=MV7+MV8;
T8=MV8+MV9;
T9=MV9+MV10;
T10=MV10+MV11;
T=[T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 T11 T12];
MA=T./8;
RMA=(Output ./ MA)*100;
disp(RMA,"Ratio to Moving Average =",MA,"4 quarter Moving Total",T,"2 year  Moving Total",MVT,"4 year  Moving Average ",Output,"Output =");
P1=[0 RMA(5) RMA(9) ];
P2=[0 RMA(6) RMA(10) ];
P3=[RMA(3)RMA(7)  0];
P4=[RMA(4) RMA(8) 0];
RT1=sum(P1);
RT2=sum(P2);
RT3=sum(P3);
RT4=sum(P4);
RT=[RT1 RT2 RT3 RT4];
AM=RT./2;
SS=round(AM);
GA=sum(AM)/4;
disp(GA,"Grand Average =",SS,"Seasonal @ =",AM,"Average Movement =",RT,"Total of Deviations = ");





