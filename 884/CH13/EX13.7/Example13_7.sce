//calculation for second order reactions

clear;
clc;

printf("\t Example 13.7\n");

k=7*10^9;//rate constant, M s

//(a)
t=2*60;//half life of the reaction, s
Ao=0.086;
A=(k*t+1/Ao)^-1;

printf("\t (a) the concentration of I is : %4.1f*10^-12 M\n",A*10^12);

//(b)
Ao=0.6;
t_half=1/(Ao*k);//half life of the reaction, s
printf("\t (b) the half life for Io=0.6 is : %2.1f*10^-10 s\n",t_half*10^10);

Ao=0.42;
t_half=1/(Ao*k);//half life of the reaction, s
printf("\t     the half life for Io=0.42 is : %2.1f*10^-10 s\n",t_half*10^10);

//End
