//Example 7_7
clc();
clear;
//To calculate the fiber length
alpha=0.5   //units in db/KM
it=2*10^-6        //units in W
i0=1.5*10^-3          //units in W
l=-1*(10/alpha)*log10(it/i0)     //units in KM
printf("The length of the fiber is L=%.1f KM",l)
