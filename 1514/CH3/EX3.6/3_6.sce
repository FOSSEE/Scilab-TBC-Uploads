//chapter 3
//example 3.4
//page 78

//to find values of h parameters (hoe,hfe) for common emitter configuration
clear;
clc ;

//given
Ib=60;                                                                          //base current in microA
Vce=4.5;                                                                        //collctor to emitter voltage in volts

//from output characteristics from point A
deltaIc=0.35/1000;                                                              //change in collector current 
deltaVce=3.5;                                                                   //change in collctor to emitter voltage
hoe=(deltaIc/deltaVce)*10^6                                                     //output conductance

//from current gain  characteristics from point B
deltaIc=2100;                                                                   //change in collector current
deltaIb=35;                                                                     //change in base current
hfe=deltaIc/deltaIb                                                             //forward current transfer ratio
printf('\nhfe=%d\nhoe=%d microS',hfe,hoe);
