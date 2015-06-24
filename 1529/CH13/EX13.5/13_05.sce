//Chapter 13, Problem 5, figure 13.16
clc;
E1=4;                       //e.m.f source 1
E2=2;                       //e.m.f source 2
R=4                         //resistor
r1=2;                       //internal resistance 1
r2=1;                       //internal resistance 2
Rr2=(R*r2)/(R+r2);          //equivalent resistance 
//calculating I2, I3, I4, I5, I6 by using current division formula
I1=E1/(r1+Rr2);
I2=(r2/(R+r2))*I1;
I3=(R/(R+r2))*I1;
Rr1=(R*r1)/(R+r1);
I4=E2/(Rr1+r2);
I5=(r1/(R+r1))*I4;
I6=(R/(R+r1))*I4;
printf("Redraw the original circuit with sourceE2 removed,being replaced by r2 only, as shown in Fig. 13.17(a)\n\n");
printf("From the equivalent circuit of Fig. 13.17(a) and (b),\n");
printf("I1 = %.3f A\n",I1);
printf("I2 = %.3f A\n",I2);
printf("I3 = %.3f A\n\n\n",I3);
printf("Redraw the original circuit with sourceE1 removed, being replaced by r1 only, as shown in Fig. 13.18(a)\n\n");
printf("From the equivalent circuit of Fig. 13.18(a) and (b)\n")
printf("I4 = %.3f A\n",I4);
printf("I5 = %.3f A\n",I5);
printf("I6 = %.3f A\n\n",I6);
printf("Superimpose Fig. 13.18(a) on to Fig. 13.17(a) as shown in Fig. 13.19\n\n");
printf("Resultant current flowing through source 1 = %.3f A (discharging)\n",I1-I6);
printf("Resultant current flowing through source 2 = %.3f A (charging)\n",I4-I3);
printf("Resultant current flowing through resistor R = %.4f A\n\n",I2+I5);
printf("The resultant currents with their directions are shown in Fig. 13.20");
