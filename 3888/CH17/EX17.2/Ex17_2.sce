//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 17.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=110;                                        //Supply voltage in kV
P1=30;                                        //Load for 5 hours in MW
P2=15;                                        //Load for 10 hours in MW
P3=8;                                         //Load for 9 hours in MW
pf1=0.8;                                      //Lagging power factor of 30 MW load
pf2=0.9;                                      //Lagging power factor of 15 MW load
pf3=1;                                        //Unity power factor of 8 MW load
I1=P1*10^(6)/(sqrt(3)*V*10^(3)*pf1);          //Current of 30 MW load in Amps
I2=P2*10^(6)/(sqrt(3)*V*10^(3)*pf2);          //Current of 15 MW load in Amps
I3=P3*10^(6)/(sqrt(3)*V*10^(3)*pf3);          //Current of 8 MW load in Amps

//The remaining of the problem cannot be solved using SCILAB









