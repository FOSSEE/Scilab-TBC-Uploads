

//exapple 1.60
clc; funcprot(0);
// Initialization of Variable
alphal=18+36/60+40/3600;//altitude at lower culmination
alphau=59+48/60+20/3600;//altitude at upper culmination
lat=(alphal+alphau)/2;
disp("latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);
delta=90+lat-alphau;
disp("declination of star observed:");
a=modulo(delta*3600,60);
printf("seconds %.2f",a);
b=modulo(delta*3600-a,3600)/60;
printf("  minutes %i",b);
c=(delta*3600-b*60-a)/3600;
printf("  degrees %i",c);
