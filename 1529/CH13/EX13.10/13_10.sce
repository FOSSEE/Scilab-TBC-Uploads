//Chapter 13, Problem 10, figure 13.43
clc;
E1=4;                      //e.m.f source 1
E2=12;                      //e.m.f source 1
r1=0.5;                       //resistance in ohm
r2=2;                         //resistance in ohm
R3=5;                         //resistance in ohm
I1=(E1-(-E2))/(r1+r2);          //current in ampere
E=E1-(I1*r1);                   //p.d in volts
r=(r1*r2)/(r1+r2);              //resistance in ohm
I=E/(r+R3);
V=I*R3;
Ia=(E1-V)/r1;
Ib=(E2+V)/r2;
printf("(i) The 5ohm resistance is removed from the circuit as shown in Fig. 13.44(a)\n\n");
printf("(ii) Current I1 = %f A \n P.d across AB = %f V\n\n",I1,E);
printf("(iii) Removing the sources of e.m.f. gives the circuit shown in Fig. 13.44(b), from which, resistance\n r = %f ohm\n\n",r);
printf("(iv) The equivalent Thévenin’s circuit is shown in Fig. 13.44(c), from which, current,\n I = %f A\n\n",I);
printf("From Section 13.4(iii), Hence current \n Ia = %f A\n",Ia);
printf("From Fig. 13.44(d), Hence current \n Ib = %f A",Ib);
