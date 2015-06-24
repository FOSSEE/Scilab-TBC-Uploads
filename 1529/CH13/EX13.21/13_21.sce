//Chapter 13, Problem 21, figure 13.74
clc;
E1=10;                             //e.m.f source 1
r1=2000;                            //resistance in ohm
E2=6;                           //e.m.f source 2
r2=3000;                            //resistance in ohm
I1=1*10^-3;                         //current in ampere
R1=600;                               //resistance in ohm
R2=200;                            //resistance in ohm
Isc1=E1/r1;                        //short-circuit current
Isc2=E2/r2;                        //short-circuit current
Isc=Isc1+Isc2;                        //short-circuit current
R=(r1*r2)/(r1+r2);
Vcd=Isc*R;
Vef=I1*R1;
E=Vcd-Vef;
r=(R+R1);
I=E/(r+R2);
printf("For the branches containing the 10V sourceand 6V source, converting to a Norton equivalent network respectively gives\n");
printf("Isc1 = %f mA\nIsc2 = %f mA\n\n",Isc1*1000,Isc2*1000);
printf("Thus the network of Fig. 13.74 converts to Fig. 13.75(a).\n\n");
printf("Combining the 5mA and 2mA current sources gives the equivalent network of Fig. 13.75(b)\n");
printf("where the short-circuit current for the original two branches considered is 7mA and the resistance is \n = %f ohm\n\n",R);
printf("The open-circuit voltage across CD is \n = %f V\n",Vcd);
printf("The open-circuit voltage across EF is\n = %f V\n\n Thus Fig. 13.75(b) converts to Fig. 13.75(c).",Vef);
printf("Combining the two Thévenin circuits gives\n E = %f V\n r = %f ohm",E,r);
printf("\n\nHence the current I flowing in a 200 ohm resistance connected between A and B is given by\n");
printf(" I = %f mA",I*1000);
