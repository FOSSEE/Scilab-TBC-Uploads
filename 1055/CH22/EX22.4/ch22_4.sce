// To Calculate the new on and off times for constant energy.
clear 
clc;

P=.5;
toff=4;
ton=(P*toff-0*toff)/(.8-P);
mprintf("toff= 4min.\n")
mprintf("ton(min.)=%.3f min.\n",ton);
