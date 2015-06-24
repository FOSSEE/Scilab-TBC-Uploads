//Chapter 13, Problem 15, figure 13.58
clc;
E1=4;                   //e.m.f source 1
E2=12;                   //e.m.f source 2
R1=0.5;                     //resistance in ohm
R2=2;                     //resistance in ohm
R3=5;                     //resistance in ohm
I1=E1/R1;                   //current in ampere
I2=E2/R2;                   //current in ampere
Isc=I1-I2;              //short-circuit current
r=(R1*R2)/(R1+R2);
I=(r/(r+R3))*Isc;
printf("(i) The 5ohm branch is short-circuited as shown in Fig. 13.59(a)\n\n");
printf("(ii) From Fig. 13.59(a),\n Isc = %f A\n\n",Isc);
printf("(iii) If each source of e.m.f. is removed the resistance‘looking-in’ at a break made between A and B is given by:\n");
printf("r = %f ohm\n\n",r);
printf("(iv) From the Norton equivalent network shown in Fig. 13.59(b) the current in the 5 resistance is given by:\n");
printf("I = %f A",I);
