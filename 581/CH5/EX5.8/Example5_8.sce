
clear;
clc;

printf("Example 5.8\n");

l=0.08; //distance between metal walls,m
k=0.12; //thermal conductivity of insulating material, w/(m*K)
l1=0.04; //length of ribs,m
l2=0.14; //projected legth of wall,m
T1=40; // temoerature of 1st wall,C
T2=0; //temperature of wall, C

//by looking at the configuration plot, there are approximately 5.6 isothermal increments and 6.15 flow channels.

Q=2*(6.15/5.6)*k*(T1-T2); //factor of 2 accounts for the fact that there are two halves in the section.

T=2.1/5.6*(T1-T2); // by simple propotionality

printf("\t temperature in the middle of of wall, 2 cm from a rib is : %.0f C\n",T);

//end