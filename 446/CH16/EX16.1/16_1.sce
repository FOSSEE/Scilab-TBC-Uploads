clear
clc
disp('Ex-16.1');
N2=0.25;N1=0.75;                                //various given values
L2=1;L1=0;
E1_E2=-4.7*(10^-4);                             //Energy difference
a=(N2/N1); b=(((2*L2)+1)/((2*L1)+1));c=E1_E2; //various terms involved in the formula of ratio of population
kT=(c/log(a/b));                              //value of k*T
k=0.0000856;                                 //constant
T=kT/k;                 //temperature of interstellar space
printf('The temperature of interstellar space was found out to be  %.1f K',T);