clear;
clc;
V1=1.6;    //on state voltage drop of SCR1
V2=1.2;    //on state voltage drop of SCR2
I1=250;    //current rating of SCR1
I2=350;    //current rating of SCR2
R1=V1/I1;
R2=V2/I2;
I=600;    //current to be shared
//for SCR1,     I*(R1+R)/(total resistance)=k*I1                    (1)
//for SCR2,     I*(R2+R)/(total resistance)=k*I2                    (2)
//(1)/(2)
R=(R2*I2-R1*I1)/(I1-I2);
printf("reqd value of resistance=%.3f ohm",R);