//Chapter 13, Problem 8, figure 13.39
clc;
E1=12;                       //e.m.f source 
R1=1;                       //resistance in ohm
R3=4;                         //resistance in ohm
R2=5;                       //resistance in ohm
R=0.8;                       //resistance in ohm
I1=E1/(R1+R2+R3);               //current in amperes
V1=R3*I1;
Req=R1+R2;                          //equivalent resistance
r=(R3*Req)/(R3+Req);                         //equivalent resistance
I=V1/(r+R);
printf("(i) The 0.8ohm resistor is removed from the circuit as shown in Fig. 13.40(a).\n\n");
printf("(ii) Current I1 = %f A \n P.d. across 4ohm resistor = %f V\n\n\n",I1,V1);
printf("(iii) Removing the source of e.m.f. gives the circuitshown in Fig. 13.40(b). The equivalent circuitof Fig. 13.40(b) is shown in Fig. 13.40(c), from which, resistance\n");
printf("r = %f ohm \n\n",r);
printf("(iv) The equivalent Thévenin’s circuit is shown in Fig. 13.40(d), from which, current\n");
printf("Current in the 0.8ohm resistor I = %f A",I);
