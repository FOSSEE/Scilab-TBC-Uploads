

//exapple 1.1.3
clc; funcprot(0);
// Initialization of Variable
a=-20;//longitude of A
b=50;//longitude of B
dol=b-a;//difference of longitude
disp("difference of longitude is");
a=modulo(dol*3600,60);
printf("seconds %.2f",a);
b=modulo(dol*3600-a,3600)/60;
printf("  minutes %i",b);
c=(dol*3600-b*60-a)/3600;
printf("  degrees %i",c);
