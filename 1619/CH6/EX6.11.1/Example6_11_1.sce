//Example 6.11.1 page 6.33

clc;
clear;

del_v=10*10^9;
N_eff= 1.5;
c=3*10^11; // speed of light in mm/sec

del_L= c/(2*N_eff*del_v);
printf("The wave guide length differenc is %d mm",del_L);
