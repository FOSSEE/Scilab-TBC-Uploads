//chapter 8
//example 8.3
//page 234
clear all;
clc ;
//given
//for Vgs=[-1 -4]
deltaVgs=[1.25 2];
deltaID=[4.3 3.8];//from transfer characteristics
gm= round((deltaID ./ deltaVgs)*10)*100


printf('\nTransconductance(gm) for Vgs=-1 V is %d microS.',gm(1))
printf('\nTransconductance(gm) for Vgs=-4 V is %d microS.',gm(2))
