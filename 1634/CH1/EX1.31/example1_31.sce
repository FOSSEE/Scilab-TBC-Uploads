

//exapple 1.31
clc; funcprot(0);
// Initialization of Variable
longP=112+20/60+15/3600;//longitude of place
GST=8+10/60+28/3600;//GST at GMM
lst=18+28/60+12/3600;//local sidereal time
dot=longP/15;//difference in time
gmm=lst+dot-GST;//SI at GMM

i=gmm*9.8565/3600;//error
gmm=gmm-i;//LST at L.M.N
LMT=gmm-dot;//local mean time
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
