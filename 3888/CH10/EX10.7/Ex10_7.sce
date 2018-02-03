//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 10.7
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


h=8;                                                                         //Height of conductor in m
r=0.01;                                                                      //Radius of conductor in m
D=4;                                                                         //Distance of conductor in m
L=10;                                                                        //Length of the line in km
V=33;                                                                        //Supply voltage in kV
f=50;                                                                        //Supply frequency in Hz
Cab=(%pi*(10^(-9))/(36*%pi))/(log(D/r)*(1/(sqrt(1+(D^(2)/(2*h)^(2))))));     //Capacitance between conductors a and b in pF/m
Can=Cab*2;                                                                   //Capacitance between phase and neutral plane in pF/m
Cab1=(%pi*(10^(-9))/(36*%pi))/log(D/r);                                      //Capacitance between conductors when effect of earth is ignored in pF/m
Ic=2*%pi*f*Cab*L*V*10^3*10^3;                                                //Charging Current of the line in A


printf("\nCapacitance between conductors is %.2f pF/m",Cab/(10^-12));
printf("\nCapacitance between phase and neutral plane is %.2f pF/m",Can/(10^-12));
printf("\nCapacitance ehen effect of ground is neglected is %.2f pF/m",Cab1/(10^-12));
printf("\nCharging current is %.3f A",Ic);

