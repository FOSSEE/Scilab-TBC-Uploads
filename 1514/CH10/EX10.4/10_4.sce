//chapter 10
//example 10.4
//page 296
clear;
clc ;
//given
R1=3.9 ; 
R2=2.2;//in Mohm
Rl=27;
Rs=1.5;//in kohm
gm=4 ;//mA/V
Rg=R1*R2/(R1+R2);
Zi=Rg;
Rp=1/gm;//in kohm
Zo=1000*(Rs*Rp)/(Rs+Rp);
Av=(gm*((Rs*Rl)/(Rs+Rl)))/(1+gm*((Rs*Rl)/(Rs+Rl)));
printf('\nZi=%.1f Mohm',Zi)
printf('\nZo=%d ohm',Zo)
printf('\nAv=%.2f ',Av)
