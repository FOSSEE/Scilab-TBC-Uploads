// Example 9.3 The table below shows the thickness of mica discs produced in a machine
clc;
clear;
S1=[13 8 12 15 8];
S2=[14 12 18 19 10];
S3=[11 10 8 16 9];
S4=[14 10 12 9 13];
S5=[12 10 12 13 7];
S6=[10 12 8 10 8];
S7=[10 16 8 8 10];
S8=[8 12 10 8 10];
S9=[13 8 11 14 7];
S10=[5 8 9 5 10];
S=[S1 ; S2 ; S3 ;S4 ; S5; S6; S7; S8; S9; S10];
Total=0;
n=10;
for i=1:n
    Total=sum(S(i))+Total;
end
Mean=0;
for i=1:n
    Mean=sum(S(i))/5+Total;
end
X=Mean/n;
R=6.3;
A2=0.577;
D4=2.115;
D3=0;
UCL=X+(A2*R);
LCL=X-(A2*R);
UCLR=D4*R;
LCLR=D3*R;
disp(LCLR,"Lower Control Limit for Range",UCLR,"Upper Control Limit for Range",LCL,"Lower Control Limit for Mean =",UCL,"Upper Control Limit for Mean",A2,"Constant of conversion =",n," Sample Size =");

