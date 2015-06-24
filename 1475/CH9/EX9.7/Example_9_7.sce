//Example 9.7 The following figures give the number of defectives in 20 sample
clc;
clear;
Total=40000;
Def=sum([425 430 216 341 225 322 280 306 337 305 356 402 216 264 126 409 193 326 280 390]);
p=Def/Total;
CL=p;
n=2000;
UCL=p+3*(sqrt((p*(1-p)/n)));
LCL=p-3*(sqrt((p*(1-p)/n)));
disp(LCL,"Lower Control Limit =",UCL,"Upper Control Limit",CL,"Centre Line = ",p,"Average fraction defective =",n,"Sample Items to be checked =",Total," Total No. of Samples =",Def,"Total defective identified =");
