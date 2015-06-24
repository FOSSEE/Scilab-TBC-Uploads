//Chapter 13, Problem 9, figure 13.41
clc;
E1=4;                       //e.m.f source 1
E2=2;                       //e.m.f source 2
r1=2;                        //resistance in ohm
r2=1;                        //resistance in ohm
R=4;                        //resistance in ohm
I1=(E1-E2)/(r1+r2);         //current in amperes
E=E1-(I1*r1);
r=(r1*r2)/(r1+r2);
I=E/(r+R);
P=I^2*R;                        //power dissipated in watt
printf("(i) The 4ohm resistor is removed from the circuit as shown in Fig. 13.42(a)\n\n");
printf("(ii) Current I1 = %f A \n P.d across AB = %f V\n\n",I1,E);
printf("(iii) Removing the sources of e.m.f. gives the circuit shown in Fig. 13.42(b), from which, resistance\n r = %f ohm\n\n",r);
printf("(iv) The equivalent Thévenin’s circuit is shown in Fig. 13.42(c), from which, current,\n I = %f A\n\n",I);
printf("Power dissipated in the 4 resistor, \nP = %f W",P);
