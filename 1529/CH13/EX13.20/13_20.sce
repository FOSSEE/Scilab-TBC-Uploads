//Chapter 13, Problem 20, figure 13.72
clc;
E1=12;                            //e.m.f source 1
E2=24;                            //e.m.f source 2
r1=3;                               //resistance in ohm
r2=2;                                //resistance in ohm  
R=1.8;                             //resistance in ohm
Isc1=E1/r1;                          //short-circuit current
Isc2=E2/r2;                           //short-circuit current
Isc=Isc1+Isc2;                          //short-circuit current
r=(r1*r2)/(r1+r2);
E=Isc*r;
I=(E/(r+R));
printf("For the branch containing the 12V source, converting to a Norton equivalent circuit gives \nIsc1 = %d A\n",Isc1);
printf("For the branch containing the 24V source, converting to a Norton equivalent circuit gives \nIsc2 = %d A\n\n",Isc2);
printf("Thus Fig. 13.73(a) shows a network equivalent to Fig. 13.72");
printf("From Fig. 13.73(a) the total short-circuit current and the total resistance is given by\n");
printf("Isc = %f A\n r = %f ohm\n Thus Fig. 13.73(a) simplifies to Fig. 13.73(b).",Isc,r);
printf("The open-circuit voltage across AB of Fig. 13.73(b),\n E = %f V\n",E);
printf("Hence the Thévenin equivalent circuit is as shown in Fig. 13.73(c).");
printf("When the 1.8 resistance is connected betweenterminals A and B of Fig. 13.73(c) the current Iflowing is given by\n I = %f A",I);

