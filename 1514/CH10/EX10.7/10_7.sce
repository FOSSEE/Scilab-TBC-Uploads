//chapter 10
//example 10.7
//page 303
clear all;
clc ;
//given
R1=1 ; 
R2=3.9;//in Mohm
Rl=56;
Rs=2.2;
Rd=6.8;//in kohm
gm=4.5;//mA/V
rd=100;//kohm
vi=50;//mV
rs=200;//ohm
Rp=1/gm;//in kohm
Zi=1000*(Rs*Rp)/(Rs+Rp);
Zo=Rd*rd/(Rd+rd);
Av=gm*(Rd*Rl)/(Rd+Rl);
vo=Av*vi*Zi/(rs+Zi);

printf('\nInput Impedance(Zi)=%d ohm',ceil(Zi))
printf('\nOutput Impedance(Zo)=%.1f kohm',(Zo))
printf('\nVoltage Gain:\nAv=%.1f ',Av)
printf('\nOutput Voltage(vo)=%d mV',ceil(vo))
