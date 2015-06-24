//Chapter 17, Problem 7
clc;
R0=600;                              //nominal impedance
fcl=15000;                            //cut-off frequency of low pass
fch=10000;                           //cut-off frequency of high pass
C1=1/(%pi*R0*fcl);                     //capacitance in farad
L1=R0/(%pi*fcl);                      //inductance in henry
C2=1/(4*%pi*R0*fch);                   //capacitance in farad
L2=R0/(4*%pi*fch);                      //inductance in henry
disp("Thus, from Fig. 17.7(a), the series arm inductances are each L/2");
printf("the series arm inductances L/2 = %f mH\n",(L1/2)*10^3);
printf("and the shunt arm capacitance = %f nF\n\n",C1*10^9);
disp("Thus, from Fig. 17.16(a), the series arm capacitances are each 2C");
printf("the series arm capacitances 2C = %f nF\n",2*C2*10^9);
printf("and the shunt arm inductance = %f mH\n\n",L2*10^3);
disp("The composite, band-pass filter is shown in Fig. 17.24.");
