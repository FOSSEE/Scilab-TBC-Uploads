//chapter 10 Ex 27

clc;
clear;
close;
inc=5/100; dec=5/100; popAfter=9975; 
popBefore=popAfter/((1+inc)*(1-dec));
mprintf("The population at the beginning of first year was %d",popBefore); 
