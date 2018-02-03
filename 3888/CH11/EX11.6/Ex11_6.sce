//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 11.6
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


Vs=420;                                                     //Supply voltage in kV
f=60;                                                       //Supply frequency in Hz
l=463;                                                      //Length of the line in km
Vr=700;                                                     //Receiving end voltage in kV
sen_end_crt=646.6;                                          //Sending end current in A
pha_con_len=acos(Vs/Vr);                                    //Phase constant length in rad
pha_const=pha_con_len/l;                                    //Phase constant in rad/km
Z=Vr*10^(3)*sin(pha_con_len)/(3^(1/2)*sen_end_crt);         //Surge impedance in Ohm
X=(sin(pha_con_len)/(1-cos(pha_con_len)))*Z;                //Reactance of the line in Ohm
shu_rat=Vs^(2)/X;                                           //Shunt reactor rating in MVAr


printf("\nThe phase constant and Surge impedance of the line is %.3f rad/km and %.f Ohm",pha_const,Z);
printf("\nThe reactance per phase and the required shunt reactor rating of the line is %.f Ohm and %.1f MVAr",X,shu_rat);



