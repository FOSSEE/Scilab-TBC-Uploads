//Chapter 13, Problem 23, figure 13.83
clc;
E=30;                          //e.m.f source
r=1.5;                        //resistance in ohm
Rl=r;
I=E/(r+Rl);                        //current in ampere
P=I^2*Rl;                       //power in watt
printf("The circuit diagram is shown in Fig. 13.84.\n\n");
printf("From the maximum power transfer theorem, for maximum power dissipation, RL =r\n\n");
printf("maximum power dissipated = %f W",P);
