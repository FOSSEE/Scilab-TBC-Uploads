



//exapple 1.33
clc; funcprot(0);
// Initialization of Variable
longP=60+30/60;//longitude of place
GST=7+30/60+48.6/3600;//GST at GMM
RA=17+28/60/40/1600;
dot=longP/15;//difference in time
i=dot*9.8565/3600;//error
gmm=GST-i;//LST at L.M.N
LMT=RA-gmm;//local mean time
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
