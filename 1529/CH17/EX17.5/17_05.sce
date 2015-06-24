//Chapter 17, Problem 5, Figure 17.18
clc;
L=(200*10^-6)/2;                  //inductance in henry
C=4000*10^-12;                   //capacitance in farad
fc=1/(4*%pi*sqrt(L*C));          //cut-off frequency
R0=sqrt(L/C);                    //nominal impedance
disp("Comparing Fig. 17.18 with the low-pass section of Fig. 17.16(b),");
printf("Inductance L = %f H\n\n",L);
printf("Capacitance C = %f uF\n\n",C*10^6);
printf("Cut off frequency fc = %d KHz\n\n",fc/1000 );
printf("Nominal impedance R0 = %d ohm\n\n",R0);
