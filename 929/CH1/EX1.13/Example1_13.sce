//Example 1.13

clear;

clc;

R1=30*10^3;//From Fig. 1.13b

R3=20*10^3;//Feedback Resistance obtained from Fig. 1.13b

R2=10*10^3;//Load Resistance obtained from Fig. 1.13b

rd=100*10^3;//Internal Input Resistance

ro=100;//Internal Output Resistance

bNnum=((R1*rd)/(R1+rd))+R3;

bNden=ro+R2+bNnum;

bN=bNnum/bNden;

bPnum=R3;

bPden=bNden;

bP=bPnum/bPden;

b=bN-bP;//Feedback Factor

printf("b=%.3f V/V",b);