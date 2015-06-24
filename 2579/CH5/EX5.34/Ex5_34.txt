//Ex:5.34
clc;
clear;
close;
D=400;// depth in km
h=300;// height in km 
f=5;// critical frequency in MHz
fmuf=f*sqrt(1+(D/(2*h))^2);// MUF in MHz
printf("The MUF in MHz = %d MHz", fmuf);