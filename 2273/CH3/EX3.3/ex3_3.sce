//Calculate the hieght above ground at which conductor should be supported
clear;
clc;
//soltion
//given
W=680;//kg/km//Line conductor weight
L=240;//meter//span of the line
U=3200;//kg//Ultimate strength
sf=2;//safety factor
T=U/sf;//kg//max allowable tension
gc=8;//m//ground clearance
w=W/1000;//kg/m//Weight of conductor in meter
printf("Max sag= (W*L^2)/(8*T)\n");
sag= (w*L^2)/(8*T);
printf("Sag= %.2f m\n",sag);
H=gc+sag;
printf("Height above which conductor should be supported\n= ground clearance+ sag= %.2f m",H);
