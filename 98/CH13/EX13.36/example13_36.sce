//Chapter 13
//Example 13_36
//Page 352

clear;clc;

v=500;
l=3;
i=120;
r=0.5;

tr=r*l;
vd=tr*i;
tv=vd;
op=i*tv/1000;

printf("Total resistance of line = %.1f ohm \n\n", tr);
printf("Full load voltage drop in the line = %d V \n\n", vd);
printf("Terminal voltage of booster = %d V \n\n", tv);
printf("Output of booster = %.2f kW \n\n", op);
