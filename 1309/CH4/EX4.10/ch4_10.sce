clc;
clear;
printf("\t\t\tChapter4_example10\n\n\n");
// determination of time required to cool to a certain temperature
rou=7.817*62.4;
c=.110;
k=8.32;
alpha=0.417e-4;
dx=1/12;
// taking Fo=1
Fo=1;
dt=Fo*dx^2/alpha;
printf("\nThe time increments is %.1f s",dt);
// We have to draw the Saul'ev plot to determine the number of time intervals
n=8; //Enter the number of time intervals from Saulev plot
time=n*dt;
printf("\nThe required time is %.2f hr",time/3600);
