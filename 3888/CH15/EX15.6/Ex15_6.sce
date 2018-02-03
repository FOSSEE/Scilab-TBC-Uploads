//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 15.6
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=11;                                               //Supply voltage in kV
f=50;                                               //Supply frequency in Hz
C=0.5;                                              //Capacitance between two conductors in microFarad/km
Cx=0.75;                                            //Capacitance between sheath and three conductors in microFarad/km
Cy=0.50;                                            //Capacitance between sheath and remaining conductor in microFarad/km
C1=Cx/3;                                            //Capacitance between conductor and sheath in microFarad/km 
C2=(Cy-C1)/2;                                       //Capacitance between phases in microFarad/km 
C0=C1+3*C2;                                         //Effective capacitance in microFarad/km
C3=C0/2;                                            //Capacitance between two conductors connecting a third conductor to the sheath in microFarad/km
I=(V*10^(3)/sqrt(3))*2*%pi*f*C0*10^(-6);            //Charging current in A/ph/km


printf("\nThe capacitance between phases is %.3f microFarad/km",C2);
printf("\nThe capacitance between conductor and sheath is %.2f microFarad/km",C1);
printf("\nThe effective per phase capacitance is %.3f microFarad/km",C0);
printf("\nThe capacitance between two conductors connecting a third conductor to the sheath is %.4f microFarad/km",C3);
printf("\nThe charging current per phase per km is %.2f A",I);


