//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 10.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


r=0.03;                                                                                                                                                      //Conductor Radius in m
d=0.35;                                                                                                                                                //Spacing between Phase Conductors in m
D=4;                                                                                                                                                         //Distance between Phases in m
LA=((1*10^(-7))*((log((D*(D+d)*2*D*(2*D+d)*D*(D-d)*2*D*(2*D-d))^(1/2)/(0.7788*r*d)^2))+(%i*0.866)*log((D*(D+d)*D*(D-d))/(2*D*(2*D+d)*2*D*(2*D-d)))))*10^(6); //Phase A Inductance in mH/km
LB=(1*10^(-7))*((log(((D*(D-d)*D*(D+d)*D*(D+d)*D*(D-d))^(1/2))/(0.7788*r*d)^2))+(%i*0.866)*log((D*(D+d)*D*(D-d))/(D*(D-d)*D*(D+d))))*10^(6);                 //Phase B Inductance in mH/km
LC=LA;                                                                                                                                                       //Phase C Inductance in mH/km
L_avg=(LA+LB+LC)/3;                                                                                                                                          //Average Inductance in mH/km


printf("\nInductance of phase A is %.3f%.3fi mH/km",real(LA),imag(LA));
printf("\nInductance of phase B is %.3f  mH/km",LB);
printf("\nInductance of phase C is %.3f%.3fi mH/km",real(LC),imag(LC));
printf("\nAverage inductance of the line is %.3f mH/km",L_avg);

                                                            //Variation present in result due to wrong calculation of LA and LB value
