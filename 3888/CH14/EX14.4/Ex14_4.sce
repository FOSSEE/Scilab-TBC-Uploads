//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 14.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


f=50;                                                       //Supply frequency in Hz
I=150;                                                      //Power line current in Amps
dac=1.8;                                                    //Spacing between conductors a and d in m
dab=2.5;                                                    //Spacing between conductors a and b in m
dcd=1;                                                      //Spacing between conductors c and d in m
Dad=sqrt((dac)^(2)+((dab/2)+(dcd/2))^(2));                  //Distance between conductors a and d in m
Dac=sqrt((dac)^(2)+((dab/2)-(dcd/2))^(2));                  //Distance between conductors a and c in m
M=4*10^(-4)*log(Dad/Dac);                                   //Mutual inductance in H/km/ph
X=2*%pi*f*M;                                                //Inductive reactance in per km
emf=I*X;                                                    //Emf induced in telephone line in V/km

printf("\nThe mutual inductance between the powerline and the telephone line %.1e H/km/ph",M);
printf("\nThe 50 Hz voltage per kilometre induced in the telephone line when the power line carries 150 A is %.2f V/km",emf);

