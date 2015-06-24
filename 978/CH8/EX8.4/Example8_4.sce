//chapter-8,Example8_4,pg 499

Vc=100//voltage across capacitor

Vi=12//input voltage

Q=(Vc/Vi)//Q-factor

f=100//frequency of operation

Vl=100//Vc=Vl at resonance

Ir=5//current at resonance

Xl=(Vl/Ir)//inductive reactance

L=(Xl/(2*%pi*f))//inductance

Rl=(Xl/Q)//resistance

printf("inductance of coil\n")

printf("L=%.4f Henry\n",L)

printf("Q-factor\n")

printf("Q=%.3f \n",Q)

printf("resistance of coil\n")

printf("Rl=%.2f ohm",Rl)