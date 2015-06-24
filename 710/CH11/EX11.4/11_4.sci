clc();
clear;
//To determine the Q-value
mBe=9.012182;                //Atomic mass of beryllium in u
mHe=4.002603;               //Atomic mass of helium
mn=1.008665;                //mass of neutron
mC=12.000000;               //Atomic mass of carbon
Q=(mBe+mHe-mn-mC)*931.5     //Q is called energy balance of the reaction
printf("The Q-value is %f MeV",Q);