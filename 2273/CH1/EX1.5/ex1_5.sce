//find the DC supply voltage
clear;
clc;
//soltion
//given
//consider 1 phase AC system
pf=0.8;
v=(33*10^3);//volts
r1=0.15;//ohm//total resistance of the 1 phase line
PD1=0.2;//percentage voltage drop in 1 phase AC system
Vd=PD1*v;//volt//voltage drop in the line
I1=Vd/r1;//ampere//load current
p=v*I1*pf;//watts//power recieved by the consumer
P=p/10^8;
printf("1 phase AC system \n");
printf("Voltage drop= %d volts\n",Vd);
printf("Load current= %d ampere\n",I1);
printf("Power recieved by consumer= %d watts or= %f*10^5 kW \n\n",p,P);
//consider DC 2 wire system
r2=0.1;//ohm//total resistance of the DC 2 wire line
PD2=0.25;//percentage voltage drop in DC 2 wire system
printf("DC 2 wire system\n");
printf("Load current in DC system= %f/V \n",p);
printf("Voltage drop= Load curret*line resistance= I2*R2= (%d/V)*%f \n", p, r2);
printf("Given voltage drop is 25 percentage of max voltage= .25*V \n ");
V=sqrt((p*r2)/PD2);
printf("Equating above equation we get V= %f KV",V/1000);
