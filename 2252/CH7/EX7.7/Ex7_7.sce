
//r1 be the variable resistance
X=10//total inductive reactance of circuit
V=200//rms value of applied voltage
//RMS value of current I=200/sqrt((2+r1)^2+10^2)
//power consumed is P=I^2*r1
//For max power, dP/dr=0
//on solving
r1=sqrt(104)
mprintf("Value of variable resistor at the instant of max power consumed in it is %f ohm\n",r1)
//solving part(ii), let r2 be the variable resistance-I=200/sqrt((200+r2)^2+10^2),P=I^2*(2+r2)
//for max power, dP/dr=0
//on solving
r2=10-2
mprintf("Value of variable resistor=%d ohm for the condition of max power consumed by the circuit\n",round(r2))
I1=200/sqrt((2+r1)^2+10^2)
I2=200/sqrt((2+r2)^2+10^2)
pf1=(2+r1)/sqrt((2+r1)^2+10^2)
pf2=(2+r2)/sqrt((2+r2)^2+10^2)
mprintf("Current in case(i)=%f A at %f pf lagging\nCurrent in case(ii)=%f A at %f pf lagging\n",I1,pf1,I2,pf2)
