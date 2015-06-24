//Chapter 13, Problem 6, figure 13.21
clc;
E1=8;                       //e.m.f source 1
E2=3;                       //e.m.f source 2
R=18                        //resistor
r1=3;                       //internal resistance 1
r2=2;                       //internal resistance 2
Rr2=(R*r2)/(R+r2);          //equivalent resistance 
//calculating I2, I3, I4, I5, I6 by using current division formula
I1=E1/(r1+Rr2);
I3=(r2/(R+r2))*I1;
I2=(R/(R+r2))*I1;
Rr1=(R*r1)/(R+r1);
I4=E2/(Rr1+r2);
I6=(r1/(R+r1))*I4;
I5=(R/(R+r1))*I4;
I36=I3-I6;
V=I36*R;
printf("Redraw the original circuit with source E2 removed,being replaced by r2 only, as shown in Fig. 13.22(a)\n\n");
printf("From the equivalent circuit of Fig. 13.22(a) and (b),\n");
printf("I1 = %.3f A\n",I1);
printf("I2 = %.3f A\n",I2);
printf("I3 = %.3f A\n\n\n",I3);
printf("Redraw the original circuit with sourceE1 removed, being replaced by r1 only, as shown in Fig. 13.23(a)\n\n");
printf("From the equivalent circuit of Fig. 13.23(a) and (b)\n")
printf("I4 = %.3f A\n",I4);
printf("I5 = %.3f A\n",I5);
printf("I6 = %.3f A\n\n",I6);
printf("Superimpose Fig. 13.23(a) on to Fig. 13.22(a) as shown in Fig. 13.24\n\n");
printf("Resultant current flowing through 18 ohm resistor = %.3f A\n",I36);
printf("P.d. across the 18ohm resistor = %.3f V\n",V);
printf("Resultant current flowing in the 8V battery = %.3f A (discharging)\n",I1+I5);
printf("Resultant current flowing in the 3V battery = %.3f A(charging)\n\n",I2+I4);
printf("The resultant currents with their directions are shown in Fig. 13.24");
