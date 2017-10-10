//chapter 21 Ex 6

clc;
clear;
close;
a1=1008; t1=2; a2=1164; t2=1.5;
sInterestDiff=a2-a1;
sInterest2=sInterestDiff*t1/t2;
p=a1-sInterest2;
rNew=(sInterest2/(p*t1))*100;
printf("The new rate is %d percent",rNew);
