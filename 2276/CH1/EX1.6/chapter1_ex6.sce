clc
clear

//input
v1=5;//voltage of battery in arm 1 in volts
v2=10;//voltage of battery in arm 2 in volts
v3=20;//voltage of battery in arm 3 in volts
r1=3;//internal resistance of battery in arm 1 in ohms
r2=8;//internal resistance of battery in arm 2 in ohms
r3=24;//internal resistance of battery in arm 3 in ohms
//arms 1,2,3 and AB are in parallel with each other and AB are in open condition
r4=6;//resistance between node formed by arms 1,2 and 3 and point A in ohms
R0=7;//load  resistance to be connected in arm AB in ohms
//calculations
//norton's equivalent method
//batteries are neglected. so, only internal resistances remain in the arms
R=1/((1/r1)+(1/r2)+(1/r3));//equivalent resistance in ohms
aRb=R+r4;// total resistance when looked into the circuit from arm AB in ohm
//applying superposition principle to determine the short circuit current
//battery in arm 1 alone is considered
R1=r1+(1/((1/r2)+(1/r3)+(1/r4)));//effective resistance in ohms
I1=v1/R1;//current in amperes
pd=I1*r1;//potential drop across the parallel combination in volts
aIb1=pd/r4;//current in amperes
//battery in the arm 2 alone is considered
R2=r2+(1/((1/r1)+(1/r3)+(1/r4)));// effective resistance in ohms
I2=v2/R2;//current in amperes
V1=I2/((1/r1)+(1/r3)+(1/r4));//voltage in volts
aIb2=V1/r4;//current in amperes
//battery in the arm 3 alone is considered
R3=r3+(1/((1/r1)+(1/r2)+(1/r4)));//effective resistance in ohms
I3=v3/R3;//current in amperes
V2=I3/((1/r1)+(1/r2)+(1/r4));//voltage in volts
aIb3=V2/r4;//current in amperes
Isc=aIb1+aIb2+aIb3;//short circuit current in amperes
I=Isc*(aRb/(aRb+R0));//current through load resistor in amperes

//output
mprintf('Nortons equivalent generator will produce a constant current of %3.3f A and has a shunt resistance of %3.0f ohms \n the current through the external resistor will be %3.1f A',Isc,r2,I)
