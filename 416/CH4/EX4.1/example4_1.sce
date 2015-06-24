clc
clear
disp('example 4 1')
day=30 //days 
pll=40;nll=5;tll=3 //light load 
pfl=100;nfl=3;tfl=5 //fan load
prl=1*1000 //refrigerator
pml=1*1000;nml=1 //misc. load 
t1=2.74;t11=15//tariff
t2=2.70;t22=25  //tariff on 25 units
tr=2.32; //reamaining units
tc=7.00;//constant charge
dis=0.05//discount for prompt payment
te=(pll*nll*tll+pfl*nfl*tfl)*day+prl*day+pml*day
tee=te/1000
mb=tc+tr*(tee-t11-t22)+t1*t11+t2*t22
nmb=mb*(1-dis)
printf("total energy consumption in %d day %dunits \nthe monthly bill Rs%.2f \nnet monthly bill Rs%.2f",day,tee,mb,nmb)