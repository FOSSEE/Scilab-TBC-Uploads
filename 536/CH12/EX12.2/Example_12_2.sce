clc;
clear;

printf("\n Example 12.2\n");

u=10; //Velocity of air
T=330; //Temperature of air
d=25e-3; //Inner diameter of pipe
T_p=415; //Temperature at which the pipe is maintained
DP_l=80; //Drop of static pressure along the pipe per unit length

//From equations 12.98 and 3.18:
//we get h=0.05*Cp
//The heat taken up per unit time by the air dQ=0.0052*Cp*dT......(i)
//The heat transferred through the pipe wall is also given by: = 0.039*Cp*(415-T)......(ii)
//Equating (i) & (ii)
//On integrating we get
T_0=415-(85/exp(0.45))
printf("\n The required air Temperature = %d K",T_0);
