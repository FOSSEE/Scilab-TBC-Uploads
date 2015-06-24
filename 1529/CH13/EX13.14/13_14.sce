//Chapter 13, Problem 14, figure 13.56
clc;
E1=4;                     //e.m.f source 1
E2=2;                     //e.m.f source 2
R1=2;                       //resistance in ohm
R2=1;                       //resistance in ohm
R3=4;                       //resistance in ohm
I1=E1/R1;                   //current in ampere
I2=E2/R2;                   //current in ampere
Isc=I1+I2;                 //short-circuit current
r=(R1*R2)/(R1+R2);
I=(r/(r+R3))*Isc;
printf("(i) The 4ohm branch is short-circuited as shown in Fig. 13.57(a)");
printf("(ii) From Fig. 13.57(a),\n  Isc = %f A\n\n",Isc);
printf("(iii) If the sources of e.m.f. are removed the resistance‘looking-in’ at a break made between A and B is given by:\n");
printf("r = %f ohm\n\n",r);
printf("(iv) From the Norton equivalent network shown inFig. 13.56(b) the current in the 4ohm resistance isgiven by:\n");
printf("I = %f A",I);
