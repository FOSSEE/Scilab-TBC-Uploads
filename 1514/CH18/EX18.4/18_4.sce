//chapter 18
//example 18.4
//page 575
clear all;
clc ;
//given
PD=360;//power dissipation in mW
RBBmin=4;//kohm
RBBmax=12;//kohm
//to get lowest value of VB1B2,use RBBmin
VB1B2max=sqrt(RBBmin*PD);
printf("\nFor 25 degree,value of VB1B2=%d V",ceil(VB1B2max));
VB2E=30;//maximum emitter reverse voltage
printf("\nAt 25 degree,VB1B2 should not exceed 30 V")
//for operation till 100 degrees
deltaT=100-25;
PD1=PD-(2.4*deltaT);
//ignore increase in RB

VB1B2max=sqrt(RBBmin*PD1);
printf("\nupto 100 degree,value of VB1B2=%.1f V",VB1B2max);
