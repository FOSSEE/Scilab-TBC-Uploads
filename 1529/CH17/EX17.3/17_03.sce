//Chapter 17, Problem 3
clc;
R0=600;                      //nominal impedance
fc=5*10^6;                    //cut-off frequency
C=1/(%pi*R0*fc);             //capacitance in farad
L=R0/(%pi*fc);                 //inductance in henry
printf("Inductance L = %d uH\n\n",L*10^6);
printf("Capacitance C = %d pF\n\n",C*10^12);
printf("A low-pass T-section filter is shownin Fig. 17.10(a),\n\n");
printf("A low-pass pi-section filter is shownin Fig. 17.10(b),\n\n");
