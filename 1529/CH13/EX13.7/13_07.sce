//Chapter 13, Problem 7, figure 13.37
clc;
E1=10;                       //e.m.f source 1
R1=2;                        //resistor 1
R3=5;                         //resistor 2
R2=8;                        //resistor 3
R=10;                        //resistor 4
I1=E1/(R1+R2);
V2=I1*R2;
r=R3+((R1*R2)/(R1+R2));
I=V2/(R+r);
printf("(i) The 10 resistance is removed from the circuit as shown in Fig. 13.38(a)\n\n");
printf("(ii) There is no current flowing in the 5 resistor and current I1 is given by\n");
printf("I1 = %.3f A\n",I1);
printf("P.d across R2 is given by\n E = %.3f V\n\n",V2);
printf("(iii) Removing the source of e.m.f. gives the circuit of Fig. 13.38(b) Resistance,\n");
printf("r = %.3f ohm\n\n",r);
printf("(iv) The equivalent Thévenin’s circuit is shown in Fig. 13.38(c)");
printf("Hence the current flowing in the 10 resistor of Fig. 13.37 is \n");
printf("I = %.3f A",I);
