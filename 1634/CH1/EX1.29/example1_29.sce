

//exapple 1.29
clc; funcprot(0);
// Initialization of Variable
longP=112+20/60+15/3600;//longitude of place
GST=8+10/60+28/3600;//GST at GMM
lst=18+28/60+12/3600;//local sidereal time
dot=longP/15;//difference in time
i=dot*9.8565/3600;//error
LST=GST+i;//LST at L.M.N
LMM=lst-LST;
i2=LMM*9.8565/3600;//error in LMM
LMT=LMM-i2;//local mean time

disp("local mean time in past midnight observed:");
a=modulo(LMT*3600,60);
printf("seconds %.2f",a);
b=modulo(LMT*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LMT*3600-b*60-a)/3600;
if c>24 then
    c=c-24;
end
printf("  hours %i",c);
