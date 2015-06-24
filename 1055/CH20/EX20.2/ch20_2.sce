// Determine the load shared by each machine .
clear
clc;
//Let x be the power supplied by 110 MW unit
// the percent drop in speed = 5x/110
x=(250*11)/(21+11);// by manipulating equation : 5x/110=5x(250-x)/210
P=250-x;//Power shared by 210 MW unit 
mprintf("Power supplied by 210 MW unit = %.2f MW \n",P);
