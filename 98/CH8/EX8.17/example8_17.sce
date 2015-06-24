//Chapter 8
//Example 8_17
//Page 190

clear;clc;

w=680;
sf=2;
strength=3100;
l=260;
gc=10;

t=strength/sf;
sag=w/1000*l^2/8/t;

printf("Working tension = %.0f kg \n\n", t);
printf("Sag = %.1f m \n\n", sag);
printf("Conductor should be supported at a height of %.1f m \n\n", sag+gc);


