//Chapter 06: Counting

clc;
clear;

mc=32 //total no of microcomputers
p=24 //total no of ports in each microcomputer
sol=mc*p

//total number of different ports to a microcomputer in the center are found using product rule
mprintf("Total number of ports is %d",sol)
