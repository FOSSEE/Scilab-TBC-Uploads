//chapter 2
//example 2.8
//page 52
clear;
clc ;
//given
T1=25;//degreeC
T2=65;//degreeC
deltaT=T2-T1;
P1=700;//max power dissipationin mw
DF=5;//derating factor in mW/degree celcius
VF=0.7;//forward voltage drop across diode

//maximum forward current at 25 degreeC
If1=P1/VF*10^-3;

//maximum forward current at 65 degreeC
P2=P1-(deltaT*DF);//mW
If2=P2/VF;

printf('maximum forward current at 25 degreeC=%d A\n',If1);
printf(' maximum forward current at 65 degreeC=%d mA',If2);
