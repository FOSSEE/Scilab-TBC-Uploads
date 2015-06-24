clear;
//clc();
s=7500;..//maximum load in KVA
v=33;..//voltage of tx line in volts

a=sqrt(3);
im=s/(v*a);..//maximum current in A

kf=1.3;..//for a 0.4 load factor
irms=kf*0.4*im;
printf("The rms value of current is:%.2f A",irms);
