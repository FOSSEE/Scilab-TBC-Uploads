//chapter 8 example 4a//
clc
clear
//bit error=BER,temperature=T,load resistance=R,noise bandwidth=B,ratio=R,minimum power required=Pmin//
R1=19.6;//in db//
R2=10^(R1/20);
R=50;
K=1.38*(10^-23);
T=400;//in kelvin//
B=(10^7);//in Hz//
is=R2*(sqrt((4*K*T*B)/R))*(10^9);
R3=0.4;
Pmin=(is/R3)*(10^-3);
printf("\n minimum power required to maintain bit error=%f micro watts\n",Pmin)
