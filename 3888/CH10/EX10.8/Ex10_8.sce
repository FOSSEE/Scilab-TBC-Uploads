//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 10.8
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


d=0.25;                                                 //Diameter of conductor in m
r=0.0125;                                               //Radius of conductor in m
Dab=5;                                                  //Distance between conductors a & b in m
Dbc=4;                                                  //Distance between conductors b & c in m
Dac=6;                                                  //Distance between conductors a & c in m
Deq=nthroot((Dab*Dbc*Dac),3);                           //Diameter equivalent of line in m
Can=(2*%pi*10^(-9)/(36*%pi))/log(Deq/r);                //Capacitance between phase a & neutral in pF/m


printf("\nThe capacitance of the transmissin line is %.2f pF/m",Can/(10^-12));
