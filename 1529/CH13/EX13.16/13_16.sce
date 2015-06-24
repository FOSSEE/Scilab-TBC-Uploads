//Chapter 13, Problem 16, figure 13.60
clc;
E1=24;                  //e.m.f source 1
R1=3;                    //resistance in ohm
R2=1.66;                    //resistance in ohm
R3=10;                    //resistance in ohm
R4=5;                    //resistance in ohm
R5=20;                    //resistance in ohm
Isc=E1/R4;             //short-circuit current
r=(R3*R4)/(R4+R3);
I=(r/(r+R2+R1))*Isc;
printf("(i) The branch containing the 3ohm resistance is shortcircuited as shown in Fig. 13.61(a)\n\n");
printf("(ii) From the equivalent circuit shownin Fig. 13.61(b), \nIsc = %f A\n\n",Isc);
printf("(iii) If the 24V source of e.m.f. is removed the resistance ‘looking-in’ at a break made betweenA and B is obtained from Fig. 13.61(c) and its equivalent circuit shown in Fig. 13.61(d) and is given by:\n");
printf("r = %f ohm\n\n",r);
printf("(iv) From the Norton equivalent network shown in Fig. 13.61(e) the current in the 3ohm resistance is given by: \n");
printf("I = %.1f A\n\n",I);
