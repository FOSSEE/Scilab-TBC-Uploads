clear
clc
disp("example 10.11")
a1=561;b1=7.92;c1=0.001562
a2=310;b2=7.85;c2=0.00194
ce=c1*c2/(c1+c2)
printf("\nce=%e",ce)
be=((b1/c1)+(b2/c2))*ce
printf("\nbe=%1.4f",be)
ae=a1-((b1^2)/4*c1)+a2-((b2^2)/4*c2)+((be^2)/4*ce)
printf("ae=%3.3f \n cost characteristics of composite unit for demand pt is \n ct=%3.3f+%1.4f*p1+%ep1^2",ae,ae,be,ce)