

//exapple 1.7 
clc; funcprot(0);
// Initialization of Variable

pi=3.14159;
delta=85+20/60;
theta=46+50/60;
if delta>90-theta then
    zend=180-theta-delta;
    disp("zenith distance in (degrees):");
    a=modulo(zend*3600,60);
printf("seconds %.2f",a);
b=modulo(zend*3600-a,3600)/60;
printf("  minutes %i",b);
c=(zend*3600-b*60-a)/3600;
printf("  degrees %i",c);
   zend1=90-zend;
    disp("altitude of star in (degrees):");
    a=modulo(zend1*3600,60);
printf("seconds %.2f",a);
b=modulo(zend1*3600-a,3600)/60;
printf("  minutes %i",b);
c=(zend1*3600-b*60-a)/3600;
printf("  degrees %i",c);
end
