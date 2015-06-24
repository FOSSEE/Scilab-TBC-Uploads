//Find the inductance of a 3 phase line(triangle)
clear;
clc;
//soltion
//given
r=1;//cm//radius of the conductor
re=r*exp(-1/4);
d1=600;//cm//spacing of the triangular shaped system
d2=700;//cm//spacing of the triangular shaped system
d3=800;//cm//spacing of the triangular shaped system
L=0.2*log(((d1*d2*d3)^(1/3))/re);
printf("Loop Inductance of line= %.4f mH/km\n",L);
