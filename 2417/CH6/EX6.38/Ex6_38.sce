clear;
clc;
printf("\t\t\tProblem Number 6.38\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.38 (page no. 290) 
// Solution

//data given
V=1000; //ft/s //the fluid velocity
gc=32.17; //Unit:(LBm*ft)/(LBf*s^2) //gc is constant of proportionality
J=778; //conversion factor
h=1204.4; //Btu/lbm //enthalpy of saturated steam
//h0-h=V^2/(2*gc*J) 
h0=h+((V^2)/(2*gc*J));  //Btu/lbm //h0=stagnation enthalpy
printf("The total enthalpy is %f Btu/lbm\n",h0);
//It will be noted for this problem that if the initial velocity had been 100ft/s,deltah would have been 0.2 Btu/lbm,and for most practical purpposes,the total      properties and those of the flowing fluid would have been essentially the same.Thus,for low-velocity fluids,the difference in total and steam properties can be      neglected.
