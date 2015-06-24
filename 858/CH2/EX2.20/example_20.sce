clc
clear
printf("example 2.20 page number 78\n\n")

//to find sequence of deposition
E1=-0.25;
E2=0.80;
E3=0.34;

a=[E1;E2;E3];
b=gsort(a);

printf("sorted potential in volts =")
disp (b)
disp ("E2>E3>E1")
disp ("silver>copper>nickel")


