

//exapple 1.26
clc; funcprot(0);
// Initialization of Variable
time=8+40/60+50/3600;
accn=-time*9.8565/3600;//acceleration
stime=time+accn;//sideral time
disp("local mean time in past midnight observed:");
a=modulo(stime*3600,60);
printf("seconds %.3f",a);
b=modulo(stime*3600-a,3600)/60;
printf("  minutes %i",b);
c=(stime*3600-b*60-a)/3600;
if c>24 then
    c=c-24;
end
printf("  hours %i",c);
