

//exapple 1.58
clc; funcprot(0);
// Initialization of Variable
theta=80;
delta=46+45/60+30/3600;
alpha1=90-theta+delta;
disp("alpha1 is (North):");
a=modulo(alpha1*3600,60);
printf("seconds %.2f",a);
b=modulo(alpha1*3600-a,3600)/60;
printf("  minutes %i",b);
c=(alpha1*3600-b*60-a)/3600;
printf("  degrees %i",c);
alpha2=theta+delta-90;
disp("alpha2 is (South):");
a=modulo(alpha2*3600,60);
printf("seconds %.2f",a);
b=modulo(alpha2*3600-a,3600)/60;
printf("  minutes %i",b);
c=(alpha2*3600-b*60-a)/3600;
printf("  degrees %i",c);
