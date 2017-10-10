close();
clear;
clc;
//(a) 
//from solved example 14.12 and 14.9
Ra = 0.05; //ohm
V = 230; //V
Pc = 920 + 1800; //W
If = 4; //A
Ia = sqrt(Pc/Ra);
Il = Ia - If;
mprintf("(a) At load of %0.2f A ,the generator achieves maximum efficiency\n\n",Il);
//(b)
//output power 'Po'
Po = Il*V; //W
Pa = Ia^2 * Ra;
//input power 'Pi'
Pi = 2*Pa + Po; //W
//maximum efficiency 'n'
n = Po/Pi;
mprintf("(b) Maximum efficiency, n = %0.1f %%",n*100);