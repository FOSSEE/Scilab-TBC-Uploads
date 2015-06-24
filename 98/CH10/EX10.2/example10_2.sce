//Chapter 10
//Example 10_2
//Page 235

clear;clc;

area=0.775;
pr=200;
pf=1;
v=3300;
n=0.9;
sr=1.725*1e-6;

ps=pr*1000/n;
loss=ps-pr*1000;
i=pr*1000/v;
r=loss/2/i^2;
l=r*area/sr;

printf("Sending end power = %.0f W \n\n", ps);
printf("Line losses = %.0f W \n\n", loss);
printf("Line current = %.1f A \n\n", i);
printf("Resistance of the line = %.3f ohms \n\n", r);
printf("Length of the conductor = %.2f km \n\n", l/1000/100);
