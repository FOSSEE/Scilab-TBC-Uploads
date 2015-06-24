// To determine the time of operation of relay .
clear
clc;
If=4000;// fault current 
I=5*1.25;// operating current of relay 
CT=400/5;// CT ratio
PSM=If/(I*CT);// plug setting multiplier
mprintf("PSM=%.3f\n",PSM);
mprintf("operating time for PSM=8 is 3.2sec.\n");
mprintf("actual operating time = 1.92 sec.");
