

//exapple 1.27.1
clc; funcprot(0);
// Initialization of Variable
longP=-160-30/60-30/3600;//longitude of place
GST=16+30/60+12/3600;//standard time
dot=longP/15;//difference in time
i=dot*9.8565/3600;//error
LST=GST-i;
disp("local mean time in past midnight observed:");
a=modulo(LST*3600,60);
printf("seconds %.2f",a);
b=modulo(LST*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LST*3600-b*60-a)/3600;
if c>24 then
    c=c-24;
end
printf("  hours %i",c);

