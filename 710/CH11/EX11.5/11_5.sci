clc();
clear;
//To determine the Q-value 
mLi=7.016004;               //mass of Lithium(A=7)
mH=1.007825;                //mass of Hydrogen(A=1)
mHe=4.002603;               //mass of helium(A=4)
Q=[mLi+mH-2*(mHe)]*931.5     //Q is the energy balance of the reaction
p=0.5;                      //energy of proton in MeV
//The energy of 2 alpha particles is equal to the Q-value + energy of proton.
Ealpha=(Q+p)/2              //energy of each alpha particle
printf("The Q-value of the reaction is %f MeV and energy of each alpha particle is %f MeV",Q,Ealpha)
