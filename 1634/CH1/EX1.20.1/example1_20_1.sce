

//exapple 1.20.1
clc; funcprot(0);
// Initialization of Variable
longP=20//longitude of the place
longSM=82+30/60;//longitude of standard meridion
dolong=longSM-longP;//difference in longitude
dot=dolong/15;//difference in time
LMT=20+24/60+6/3600-dot;
disp("local mean time in past midnight:");
a=modulo(LMT*3600,60);
printf("seconds %.2f",a);
b=modulo(LMT*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LMT*3600-b*60-a)/3600;
printf("  hours %i",c);
