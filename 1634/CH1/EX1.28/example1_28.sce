

//exapple 1.28
clc; funcprot(0);
// Initialization of Variable
longP=85+20/60;//longitude of place
GST=6+30/60;//standard time
GMN=6+32/60+12/3600;
dot=longP/15;//difference in time
i=dot*9.8565/3600;//error
LST=GMN-i;//LST at L.M.N
i2=GST*9.8565/3600;//error in GST
LST2=GST+i2;
LST=LST+LST2//lst at L.M.N
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
