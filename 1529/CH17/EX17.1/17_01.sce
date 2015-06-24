//Chapter 17, Problem 1, Figure 17.8
clc;
L=200*10^-3;                //inductance in henry
C=0.2*10^-6;                //capacitance in farad
fc=1/(%pi*sqrt(L*C));       //cut-off frequency
R0=sqrt(L/C);               //nominal impedance

disp("Comparing Fig. 17.8 with the low-pass section of Fig. 17.7(a),");
printf("Inductance L = %f H\n\n",L);
printf("Capacitance C = %f uF\n\n",C*10^6);
printf("Cut off frequency fc = %f KHz\n\n",fc/1000 );
printf("Nominal impedance R0 = %f Kohm\n\n",R0/1000);
