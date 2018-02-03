//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 15.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=110;                                                          //Line voltage in kV
r=1;                                                            //Conductor radius in cm
p1=5;                                                           //Permittivitie of the material A
p2=4;                                                           //Permittivitie of the material B
p3=2;                                                           //Permittivitie of the material C
G1=50;                                                          //Permissible stress of the material A in kV/cm
G2=40;                                                          //Permissible stress of the material B in kV/cm
G3=30;                                                          //Permissible stress of the material C in kV/cm
r1=p1*r*G1/(p2*G2);                                             //Outer radius of the material A in cm
r2=p2*r1*G2/(p3*G3);                                            //Outer radius of the material B in cm
R=exp(1.638);                                                   //Outer radius of the material C in cm(solving the eqn 15.24 in the book )

printf("\nThe minimum internal sheath radius of the cable is %.2f cm",R)
