//chapter 18
//example 18.9
//page 782
printf("\n")
printf("given")
I2=1*10^-3;Vr2=7.15;Vref=Vr2;Vo=10;Pdmax=1000*10^-3;
R2=Vref/I2
R2=6.8*10^3;//use standard value and recalculate the I2
I2=Vref/R2
R1=(Vo-Vref)/I2
Vs=Vo+5//for satisfactory operation of series pass transistor
Iint=25*10^-3;//internal circuit current
Pi=Vs*Iint
disp("maximum power dissipated in series pass transistor")
Pd=Pdmax-Pi
disp("maximum load current is ")
Il=Pd/(Vs-Vo)
