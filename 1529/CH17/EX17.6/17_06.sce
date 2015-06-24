//Chapter 17, Problem 6
clc;
fc=25*10^3;                            //cut-off frequency
R0=600;                               //nominal impedance
C=1/(4*%pi*R0*fc);                     //capacitance in farad
L=R0/(4*%pi*fc);                       //inductance in henry
printf("Inductance L = %f mH\n\n",L*10^3);
printf("Capacitance C = %f pF\n\n",C*10^12);
printf("A high-pass T-section filter is shownin Fig. 17.19(a),\n\n");
printf("A high-pass pi-section filter is shownin Fig. 17.19(b),\n\n");
