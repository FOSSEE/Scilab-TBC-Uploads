//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 10.9
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


f=50;                                                  //Frequency of the condutor in Hz
D1=31.8;                                               //Diameter of ACSR Moose conductor in mm(Unbundled conductor)
d1=10;                                                 //Hoizontal spacing between adjacent conductors in m
D2=19.6;                                               //Diameter of ASCR Lynx conductor in mm(Bundled conductor)
d2=10;                                                 //Spacing measured by centre of the bundle in m
Db=0.4;                                                //Spacing between the bundled conductors in m
r1=D1*10^-3/2;                                         //Radius of unbundled conductor in m
Dm=nthroot((d1*d2*(d1+d2),3));                         //Mutual GMD of unbundled conductorin m
Dls1=0.7788*r1;                                        //GMR For Inductance of unbundled conductor in m
Dcs1=r1;                                               //GMR For Capacitance of unbundled conductor in m
XL1=2*%pi*f*2*10^(-4)*log(Dm/Dls1);                    //Inductive Reactance  of unbundled conductor in ohm/km/phase
XC1=(log(Dm/Dcs1))/(((2*%pi)^2)*f*8.85*10^(-12));      //Capacitive  Reactance  of unbundled conductor in ohm-km/phase
r2=D2*10^-3/2;                                         //Radius of bundled conductor in m
Dls2=nthroot((0.7788*r2*Db^2),3);                      //Self GMR for Inductance of bundled conductor in m
Dcs2=nthroot((r2*Db^2),3);                             //Self GMR for Capacitance of bundled conductor in m
XL2=2*%pi*f*2*10^(-4)*log(Dm/Dls2);                    //Inductive Reactance  of bundled conductor in ohm/km/phase
XC2=(log(Dm/Dcs2))/(((2*%pi)^2)*f*8.85*10^(-12));      //Capacitive  Reactance  of bundled conductor in ohm-km/phase


printf("\nThe value inductive reactance and capacitive reactance of unbundled conductor is %.3f ohm/km/ph and %.3e ohmkm/ph ",XL1,XC1/10^(3));
printf("\nThe value inductive reactance and capacitive reactance of bundled conductor is %.4f ohm/km/ph and %.4e ohmkm/ph ",XL2,XC2/10^(3));
