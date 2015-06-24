



//exapple 1.32
clc; funcprot(0);
// Initialization of Variable
//part1
longP=162+30/60+15/3600;//longitude of place
GST=10+30/60+15/3600;//GST at GMN
RA=22+11/60+30/3600;//local sidereal time
dot=longP/15;//difference in time
i=dot*9.8565/3600;//error
gmm=GST+i;//LST at L.M.N
lmn=RA-gmm;//SI of LMN
i2=lmn*9.8565/3600;//error 2
LMT=lmn-i2;
disp("local mean time in past midnight observed at upper transit:");
a=modulo(LMT*3600,60);
printf("seconds %.2f",a);
b=modulo(LMT*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LMT*3600-b*60-a)/3600;
if c>24 then
    c=c-24;
end
printf("  hours %i",c);
//part2
i3=12*9.8565/3600;//ratardation
LMT=LMT+12-i3;
disp("local mean time in past midnight observed at lower transit:");
a=modulo(LMT*3600,60);
printf("seconds %.2f",a);
b=modulo(LMT*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LMT*3600-b*60-a)/3600;
if c>24 then
    c=c-24;
end
printf("  hours %i",c);
disp("its the time of next day")
