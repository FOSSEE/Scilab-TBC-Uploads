//Example 11.10

clear;
clc;

printf("\tExample 11.10\n");

//From material balance
    //  D+W=1
    //  0.995D+0.1W=1*3

A=[1 1;0.995 0.1];
B=[1;3];
Rm = (1952-1547)/(1547-295);
printf("\n Rm = %.3f",Rm);
NA = 1.08*405;
printf("\n Since the actual reflux is 8 pre cent above the minimum NA = 1.08*NmA = %.3f",NA);
N = 5/0.6;
printf("\n Number of plates to be  required are %.3f",5/0.6);

Qb_W = 582 - (-209);
printf("\n Heat input to the boiler per unit mass of bottom product is %.3f",Qb_W);
printf("\n Heat input to the boiler = %.3f kW",791*0.78);
printf("\n Condenser duty = %d kW",(1984-296)*0.22);
