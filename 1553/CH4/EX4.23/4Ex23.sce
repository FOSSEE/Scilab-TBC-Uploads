//chapter 4 Ex 23

clc;
clear;
close;
b_taken=6; b_poured=4; //number of bottles taken and poured respectively
oil_filled=4/5; oilfill_poured=3/4;
numBottles=(b_taken-b_poured)/(oil_filled-oilfill_poured);
mprintf("The required number of bottles are %0.0f",numBottles);
