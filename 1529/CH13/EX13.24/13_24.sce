//Chapter 13, Problem 24, figure 13.85
clc;
R1=3;                                   //resistance in ohm
R2=12;                                   //resistance in ohm
E=15;                                       //e.m.f source
E1=(R2/(R1+R2))*E;                          //p.d in volts
r=(R1*R2)/(R1+R2);                        //resistance in ohm
Rl=r
I=E1/(r+Rl);                                //current in amperes
P=I^2*Rl;                                   //power in watt
printf("(i) Resistance RL is removed from the circuit as shown in Fig. 13.86(a)\n\n");
printf("ii) The p.d. across AB is the same as the p.d. across the 12 resistor. Hence\n");
printf("E = %d V\n\n",E1);
printf("(iii) Removing the source of e.m.f. gives the circuit of Fig. 13.86(b), from which, resistance,\n");
printf("r = %f ohm\n\n\n",r);
printf("(iv) The equivalent Thévenin’s circuit supplying terminalsAB is shown in Fig. 13.86(c), from which,\n");
printf("For maximum power, RL =r\n");
printf("Power, P, dissipated in load RL, = %d W",P);
