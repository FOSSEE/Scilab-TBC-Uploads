//Chapter 17, Problem 2, Figure 17.9
clc;
C=2*200*10^-12;                //capacitance in farad
L=0.4;                          //inductance in henry
fc=1/(%pi*sqrt(L*C));           //cut-off frequency
R0=sqrt(L/C);                   //nominal impedance
disp("Comparing Fig. 17.9 with the low-pass section of Fig. 17.7(a),");
printf("Inductance L = %f H\n\n",L);
printf("Capacitance C = %f pF\n\n",C*10^12);
printf("Cut off frequency fc = %.2f KHz\n\n",fc/1000 );
printf("Nominal impedance R0 = %.2f Kohm\n\n",R0/1000);
