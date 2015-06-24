//Chapter 13, Problem 17, Figure 13.62
clc;
I1=15                             //current source in ampere
R1=6;                            //resistance in ohm
R2=4;                             //resistance in ohm
R3=2;                             //resistance in ohm
R4=8;                             //resistance in ohm
R5=7;                             //resistance in ohm
Isc=(R1/(R1+R2))*I1;             //short-circuit current
R12=R1+R2;
R45=R4+R5;
r=(R12*R45)/(R12+R45);
I=(R1/(R1+R3))*Isc;
printf("(i) The 2ohm resistance branch is short-circuited as shown in Fig. 13.63(a)\n\n");
printf("(ii) Fig. 13.63(b) is equivalent to Fig. 13.63(a).\n");
printf("Hence Isc = %f A\n\n",Isc);
printf("(iii) If the 15A current source is replaced by an opencircuit then from Fig. 13.63(c),");
printf("the resistance‘looking-in’ at a break made between A and B is given by (6+4)ohm in parallel with (8+7)ohm, i.e.\n r = %f ohm\n\n",r);
printf("(iv) From the Norton equivalent network shown in Fig. 13.63(d) the current in the 2ohm resistance isgiven by: \n");
printf("I = %f A",I);
