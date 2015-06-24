//Chapter 11
//Example 11_20
//Page 292

clear;clc;

k=5;
r=30/2;
r1=r+40;
er=110*1e-6;

s1=k/2/%pi*log(r1/r);
s2=0.45;
s=s1+s2;
n=1;
t=55;
i=sqrt(t/n/er/s);

printf("Thermal resistance of the dielectric of the cable = %.2f thermal ohms per metre length \n\n", s1);
printf("Total thermal resistance = %.2f thermal ohms per metre legth \n\n", s);
printf("Maximum permissible current loading = %.0f A \n\n", i);
