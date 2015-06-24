//chapter 21
//example 21.2
//page 672
clear;
clc ;
//given
Rg=1;//grid resistor in Mohm;
Rp=7;//plate resistor in kohm;
Rl=30;//load resistance in kohm
Vcc=175;//supply voltage in  V
Vg=-2;//grid bias in V
Ep1=Vcc;Ip=0;Epp=Ep1;
Ep2=0;Ip2=Epp/Rp;
//dc load line with points A(175,0)and B(0,25),intersects Eg=-2V which gives
Ip=10;//
Ep=105;
//ip impedance
Zi=Rg;

//op impedance
rp=50/10;//deltaEp/deltaIp
Zo=(rp*Rp)/(rp+Rp);

//voltage gain
mu=50/2;
Av=-mu*((Rp*Rl)/(Rp+Rl))/(rp+((Rp*Rl)/(Rp+Rl)));

printf("\nip impedance=%dMohm",Zi);
printf("\nop impedance=%.1f kohm",Zo);
printf("\nvoltage gain=%.1f",Av);
