

//exapple 1.1.4
clc; funcprot(0);
// Initialization of Variable
a=-40;//longitude of A
b=150;//longitude of B
dol=b-a;//difference of longitude
if  dol>180 then
    dol=360-dol;
    disp("difference of longitude is");
a=modulo(dol*3600,60);
printf("seconds %.2f",a);
b=modulo(dol*3600-a,3600)/60;
printf("  minutes %i",b);
c=(dol*3600-b*60-a)/3600;
printf("  degrees %i",c);
end
