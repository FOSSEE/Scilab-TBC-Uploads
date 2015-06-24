// Examcle 9.9 The following are the numbers of defects noted in 20 hundred 
clc;
clear;
Total=20;
Def=sum([3 3 6 3 0 1 3 5 7 8 4 10 5 5 4 3 4 5 4 1]);
c=Def/Total;
CL=c;
UCL=c+3*(sqrt(c));
LCL=c-3*(sqrt(c));
disp(LCL,"Lower Control Limit =",UCL,"Upper Control Limit",CL,"Centre Line = ",Total," Total No. of Samples =",Def,"Total defective items =");
