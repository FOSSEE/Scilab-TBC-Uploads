




//Example1-1
//Given
clc;
clear all;
printf("(i)   t1=d/c  \n");
printf(" (ii)  t2=[(d-5)/c]+[5/v2] \n");
printf("       v2=c/n2      \n");
printf("       t2=(d+2.5)/c\n");
printf(" (iii) delta_t=t2-t1=(d+2.5-d)/c\n");
c=3*10^8;       //Speed of light in m/s
delta_t=2.5*10^-2/c;            //converted 2.5 cm into meters
printf('The time difference %e s",delta_t );
printf("\n Arrival time difference of two monochromatic beams is %0.0f ps",delta_t*10^12)
// Answer misprinted in the book
