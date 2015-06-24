//chapter 10
//example 10.6
//page 302
clear all;
clc ;
//given
R1=3.9 ; 
R2=2.2;//in Mohm
Rl=27;
Rs=1.5;
Rd=3.3;//in kohm
gm=3.5;//mA/V
rd=70;//kohm
vs=100;//mV
rs=600;//ohm
Rp=1/gm;//in kohm
Zi=1000*(Rs*Rp)/(Rs+Rp);
Zo=Rd*rd/(Rd+rd);
Av=gm*(Rd*Rl)/(Rd+Rl);
vi=vs*Zi/(rs+Zi);
vo=Av*vi;
printf('\nInput Impedance(Zi)=%d ohm',Zi)
printf('\nOutput Impedance(Zo)=%.2f kohm',(Zo))
printf('\nVoltage Gain:\nAv=%.1f ',Av)
printf('\nOutput Voltage(vo)=%d mV',ceil(vo))
