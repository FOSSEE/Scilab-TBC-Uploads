clc
clear 
printf("example 8.9 page number 369\n\n")

//to find pA and pB
//part 1

h1=0.66;       //in m
h2=0.203;      //in m
h3=0.305      //in m
density=1000;  //in kg/m3
pB=68900;      //in Pa
s1=0.83;
s2=13.6;
disp("part 1")
pA=pB+(h2*s2-(h1-h3)*s1)*density*9.81;    //in Pa
printf("\npressure at A = %f Pa\n",pA)

disp("part 2")
pA1=137800      //in Pa
pressure=735   //mm Hg
pB1=pA1-(h2*s2-(h1-h3)*s1)*density*9.81;
pressure_B=(pB1-pressure*133.3)/9810;        //m of water
printf("\npressure at B = %f m of water",pressure_B)
