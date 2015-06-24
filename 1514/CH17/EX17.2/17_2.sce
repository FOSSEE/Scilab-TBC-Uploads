//chapter 17
//example 17.2
//page 522
clear all;
clc ;
//given
eta=80;//Xformer efficiency
Vcc=13;//supply voltage
ICQ=5;
Pi=Vcc*ICQ;//ip power dissipation in mW
VCEQ=8;
Vp=VCEQ;
ICEQ=5;
Ip=ICEQ;
//power delivered to Xformer primary
Po1=(Vp*Ip)/2;
//Xformer op power
Po = eta * Po1 ;//mW
//ckt efficiency
efficiency=(Po/Pi);
printf("\nMaximum ckt efficiency of class A amplifier =%.1f%%",efficiency);
