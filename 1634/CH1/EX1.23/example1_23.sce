

//exapple 1.23
clc; funcprot(0);
// Initialization of Variable
LMT=10+20/60+30/3600;//local mean time
longP=102+30/60;//longitude of the place
dot=longP/15;
GMT=LMT-dot;
mGMN=12-GMT;//mean time interval
i=mGMN*0.32/3600;//increase in mGMN
ETGMN=5/60+4.35/3600;
ch=i+ETGMN;//change in GMT
GMT=ch+GMT;
LMT=GMT+dot;
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
