

//exapple 1.5 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
delta=42+15/60;//declination of star
theta=26+40/60;//latitude of star
zend=90-theta-90+delta;
alt=90-zend;
disp("zenith distace of star in (degrees):");
a=modulo(zend*3600,60);
printf("seconds %.2f",a);
b=modulo(zend*3600-a,3600)/60;
printf("  minutes %i",b);
c=(zend*3600-b*60-a)/3600;
printf("  degrees %i",c);
disp(,"altitude of star in (degrees):");
a=modulo(alt*3600,60);
printf("seconds %.2f",a);
b=modulo(alt*3600-a,3600)/60;
printf("  minutes %i",b);
c=(alt*3600-b*60-a)/3600;
printf("  degrees %i",c);
