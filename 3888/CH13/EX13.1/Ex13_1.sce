//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 13.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


L=160;                                  //Span length in m
w=4;                                    //Weight of the conductor in N/m
Ts=8000;                                //Tensile strength in N
T=Ts/w;                                 //Working stress in N
d=w*L^(2)/(8*T);                        //Sag of the line in m
l=L+(w^(2)*L^(3)/(24*T^(2)));           //Total length of conductor in spans in m


printf("\nSag of the line between span is %.1f m",d);
printf("\nTotal length of the line between span is %.2f m",l);

