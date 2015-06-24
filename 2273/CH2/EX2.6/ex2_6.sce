//Calculate the most economical cross sectional area
clear;
clc;
//soltion
//given
id=0.1;//interest & depreciation charges
V=20000;//volts//supply voltage
d=1.72*10^-6;//ohm cm//specific resistance
cst=.6;//rs// cost of energy per unit
p1=1500//kilowatts
t1=8//hours
pf1=.8//power factor
p2=1000//kilowatts
t2=10//hours
pf2=.9//power factor
p3=100//kilowatts
t3=6//hours
pf3=1//power factor
t=365//no. of days
i1=p1*1000/(sqrt(3)*V*pf1);//ampere//current at time t1
i2=p2*1000/(sqrt(3)*V*pf2);//ampere//current at time t2
i3=p3*1000/(sqrt(3)*V*pf3);//ampere//current at time t3
R=d*100*1000;//ohm
P2=8000*id;//Loss load factor
printf("Annual cost of cable is Rs(80000a + 20000)per km\n");
printf("Capital cost= P2*a= %d*a*l \n", P2);
P3=(3*((i1^2*t1)+(i2^2*t2)+(i3^2*t3))*R*t*cst)/1000;//kWh//annual cost of energy loss
printf("Energy loss per annum= (P3*l)/a= (%f*l)/a \n",P3);
a=sqrt(P3/P2);
printf("Economic cross section of conductor is= √(P3/P2)= %f square cm \n",a);
