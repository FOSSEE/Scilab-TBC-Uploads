

//exapple 1.30
clc; funcprot(0);
// Initialization of Variable
longP=85+20/60;//longitude of place
GST=18+30/60;//standard time
gst=6+32/60+12/3600;//GST at GMN
dot=longP/15;//difference in time
GMT=GST-dot-12;
i=GMT*9.8565/3600;//error
GMT=GMT+i;//SI time
LST=GMT+dot+gst;//LST at LMT
disp("local standard time in past midnight observed:");
a=modulo(LST*3600,60);
printf("seconds %.2f",a);
b=modulo(LST*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LST*3600-b*60-a)/3600;
if c>24 then
    c=c-24;
end
printf("  hours %i",c);
