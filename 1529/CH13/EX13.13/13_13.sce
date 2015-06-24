//Chapter 13, Problem 13, figure 13.54
clc;
E=10;                      //e.m.f source 1
R1=2;                         //resistance in ohm
R2=8;                         //resistance in ohm
R3=5;                         //resistance in ohm
R4=10;                         //resistance in ohm
Isc=E/R1;                       //short-circuit current in ampere
r=(R1*R2)/(R1+R2);
I=(r/(r+R3+R4))*Isc;
printf("(i) The branch containing the 10 resistance is short-circuited as shown in Fig. 13.55(a)\n\n");
printf("(ii) Fig. 13.55(b) is equivalent to Fig. 13.55(a).\n Isc = %f A\n\n",Isc);
printf("(iii) If the 10V source of e.m.f. is removed from Fig. 13.55(a) the resistance ‘looking-in’ at a break made between A and B is given by:\n");
printf("r = %f ohm\n\n",r);
printf("(iv) From the Norton equivalent network shown in Fig. 13.55(c) the current in the 10 resistance, by current division, is given by:\n");
printf("I = %f A",I);
