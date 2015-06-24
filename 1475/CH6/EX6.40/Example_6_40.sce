// Example 6.40 Compute Seasonal Indices from the data 
clc;
clear;

Output=[65 58 56 61 68 63 63 67 70 59 56 52 60 55 51 58];
LR1=0;
LR2=Output(2)/Output(1);
LR3=Output(3)/Output(2)
LR4=Output(4)/Output(3);
LR5=Output(5)/Output(4);
LR6=Output(6)/Output(5);
LR7=Output(7)/Output(6);
LR8=Output(8)/Output(7);
LR9=Output(9)/Output(8);
LR10=Output(10)/Output(9)
LR11=Output(11)/Output(10);
LR12=Output(12)/Output(11);
LR13=Output(13)/Output(12);
LR14=Output(14)/Output(13);
LR15=Output(15)/Output(14);
LR16=Output(16)/Output(15);
LRT=[LR1 LR2 LR3 LR4 LR5 LR6 LR7 LR8 LR9 LR10 LR11 LR12 LR13 LR14 LR15 LR16]*100;
disp(,LRT,"Link relatives = ",Output,"Output =");
P1=[0 LRT(5) LRT(9) LRT(13)];
P2=[LRT(2) LRT(6) LRT(10) LRT(14)];
P3=[LRT(3)LRT(7) LRT(11) LRT(15)];
P4=[LRT(4) LRT(8) LRT(12) LRT(16)];
RT1=sum(P1);
RT2=sum(P2);
RT3=sum(P3);
RT4=sum(P4);
RT=[RT1 RT2 RT3 RT4];
AM=RT./[3 4 4 4];
disp(AM,"Seasonal Index Movement =",RT,"Total =  ");





