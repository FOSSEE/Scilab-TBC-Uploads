//work done by gas

clear;
clc;

printf("\t Example 6.1\n");

//(a)
P=0;//external pressure, atm
Vf=6;//final volume, L
Vi=2;//initial volume, L
W=-P*(Vf-Vi);//work in atm.L

printf("\t the work done in expansion against vacuum is : %4.0f J\n",W);

//(b)
P=1.2;//external pressure, atm
Vf=6;//final volume, L
Vi=2;//initial volume, L
W=-P*(Vf-Vi);//work in atm.L
W=W*101.3;//work in J

printf("\t the work done in expansion against 1.2 atm pressure is : %4.1f *10^2 J\n",W*10^-2);

//End
