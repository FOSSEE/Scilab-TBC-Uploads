clc
clear
disp('example14.2')
p=100 //power of alternator
f=50  //frequency
h=5   //h constant of machine kW-sec kVA
inl=50 //load suddenly increase by
de=0.5 //time delay
ke=h*p*10^3 //kinetic energy
lke=inl*10^3*de //loss in kinetic energy
nf=((1-(lke/ke))^(de))*f //now frequency 
fd=(1-nf/f)*100  //frequency deviation
printf("kinetic energy stored at rated speed %.1e kW-sec \nloss in kinetic energy due to increase in load %.1e kW-sec \n new frequency %.3fHz \nfrequency deviation %.3f",ke,lke,nf,fd)