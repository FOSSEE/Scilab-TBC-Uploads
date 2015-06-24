clear;
clc;
//Example 17.11
b=25;
iB=1;
iC=2;
ic=(iB+iC)/(1+1/b);
printf('\ninternal collector current=%.3f mA\n',ic)
ib=ic/b;
printf('\ninternal base current =%.3fmA\n',ib)
iD=iB-ib;
printf('\nSchottky diode current=%.3f mA\n',iD)
iC=20;
ic=(iB+iC)/(1+1/b);
printf('\ninternal collector current=%.3f mA\n',ic)
ib=ic/b;
printf('\ninternal base current =%.3fmA\n',ib)
iD=iB-ib;
printf('\nSchottky diode current=%.3f mA\n',iD)
