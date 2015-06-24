// To determine the maximum voltage that the string of the suspension insulators can withstand.
clear
clc;
E3=17.5;
E1=64*E3/89;
E2=9*E1/8;
E=E1+E2+E3;
mprintf("the maximum voltage that the string of the suspension insulators can withstand=%.2f kV\n",E);
