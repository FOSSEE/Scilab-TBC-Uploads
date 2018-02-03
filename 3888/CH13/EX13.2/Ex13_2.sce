//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 13.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


w=0.35;                                //Weight of the conductor in kg/m
Ts=800;                                //Tensile strength in kg
Sf=2;                                  //Safety factor
L=160;                                 //Span length in m
h=70;                                  //Height of support from the ground in m
T=Ts/Sf;                               //Working stress in kg
h1=h-40;;                              //Difference between supports in m
x1=(L/2)-(T*h1/(w*L));                 //Distance of minimum point from the lower support in m
h2=h-65;                               //Difference between supports in m
x2=(L/2)-(T*h2/(w*L));                 //Distance of minimum point from the lower support in m
d1=w*x2^(2)/(2*T);                     //Sag from lower support in m
mgc=65-d1;                             //Minimum ground clearance in m


printf("\nThe minimum clearance from the ground %.2f m",mgc);
printf("\nThe distance of minimum point from the lower support at 40m is %.2f m",x1);
printf("\nThe distance of minimum point from the lower support at 65m is %.2f m",x2);


