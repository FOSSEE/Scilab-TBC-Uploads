//chapter 3
//example 3.4
//page 78
//find hfc,hib,alpha for common emitter configuration
clear;
clc ;

//given
hfe=60;                                                                         //forward current transfer ratio for common emitter configuration

hie=1250;                                                                       //input resistance for common emitter configuration

hfc= -(1+hfe);                                                                  //forward current transfer ratio for common collector configuration

hib =hie/(1+hfe);                                                               //input resistance for common base configuration

alpha=hfe/(1+hfe);                                                              // current gain factor

printf('\nalpha=%.3f\nhib=%.1f ohm\nhfc=%d',alpha,hib,hfc);
