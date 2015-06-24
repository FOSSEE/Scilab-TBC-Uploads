//Caption: rate of information
//Example 9.12
//page no 401
//Find Average rate of information
clc;
clear;
m=16;
pxi=1/16;
elements=2*10^6;
n=32
HX=0;
for(i=1:16)
   HX=HX+(-(pxi*log2(pxi)));
end

r=elements*n;
R=r*HX
printf("Average rate of information\n  \n \t R = %d Mbs",R/10^6);
