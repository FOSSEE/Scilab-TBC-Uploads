//Chapter 17, Problem 4, Figure 17.17
clc;
C=(0.2*10^-6)/2;                //capacitance in farad
L=100*10^-3;                    //inductance in henry
fc=1/(4*%pi*sqrt(L*C));          //cut-off frequency
R0=sqrt(L/C);                     //nominal impedance
disp("Comparing Fig. 17.17 with the low-pass section of Fig. 17.16(a),");
printf("Inductance L = %f H\n\n",L);
printf("Capacitance C = %f uF\n\n",C*10^6);
printf("Cut off frequency fc = %.1f Hz\n\n",fc );
printf("Nominal impedance R0 = %d Kohm\n\n",R0/1000);

