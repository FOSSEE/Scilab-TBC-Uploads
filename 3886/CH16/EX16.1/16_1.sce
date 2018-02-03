//Pump
//Work done in lifting 40 m^3 of water to a height of 50 m (W1)
W1=40*9810*50  //N-m
//Kinetic energy at delivery KE1
KE1=(40*9810*25)/(2*9.81)  //N-m
//Total energy spent (TE)
TE=19620000+500000  //N-m
//This energy is spent by the pump in half an hour
//Pump output power (PO)
PO=(20120000)/(1800*1000)  //kW
//Input power (Ip)
Ip=PO/0.7  //kW
printf("\Energy spent=%.2f N-m\nInput power=%.4f kW",TE,Ip)


