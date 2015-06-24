//chapter 3
//example 3.7
//page 92
//to find values of h parameters (hie,hre)for common emitter configuration
clear all;
clc ;
//given
Ib=60;                                                                          //base current in microA
Vce=4.5;                                                                        //collctor to emitter voltage in volts

//from input characteristics from point C
deltaVbe=0.15;                                                                  //change in base to emitter voltage
deltaIb=120/10^6;                                                               //change in base current 
hie=(deltaVbe/deltaIb)/1000;                                                    //input resistance

//from input characteristics from point D
deltaVbe=0.01;
deltaVce=5;                                                                     //change in collctor to emitter  voltage
hre=1000*deltaVbe/deltaVce;                                                          //reverse voltage transfe ratio


printf('\ninput resistance:\nhie=%.2f Kohm\nreverse voltage transfer ratio:\nhre=%dx(10^-3)',hie,hre);
