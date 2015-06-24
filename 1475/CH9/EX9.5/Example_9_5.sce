// Example 9.5
clc;
clear;
k=18;
n=10;
X=595.8;
S=8.28;
A1=1.03;
B3=0.28;
B4=1.72;
CLM=X/k;
CLSD=S/k;
UCLM=CLM+(A1*CLSD);
LCLM=CLM-(A1*CLSD);
UCLS=B3*CLSD;
LCLS=B4*CLSD;
disp(LCLS,"Lower Control Limit for Standard Deviation",UCLS,"Upper Control Limit for Standard Deviation",LCLM,"Lower Control Limit for Mean =",UCLM,"Upper Control Limit for Mean",A1,"Constant of conversion =",n," Sample Size =",k,"No. of samples ");
