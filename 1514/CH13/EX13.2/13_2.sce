//chapter 13
//example 13.2
//page 397
clear all;
clc ;
//given
RC=10;//collector resistance
hie=1;//input resistance in kohm
hfe=50;//forward current transfer ratio
hoe=1;//output conductance in microS
Av=(hfe*RC)/(2*hie);//voltage gain
Zb=2*hie;
Zo=RC;
Acm=RC/(2*(1/hoe));
printf("\nvoltage gain=%d",Av);
printf("\ninput impedance=%d kohm",(Zb));
printf("\noutput impedance =%d kohm",(Zo));
printf("\ncommon mode gain=%dx10^-3",Acm);
