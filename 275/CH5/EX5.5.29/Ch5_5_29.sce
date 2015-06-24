clc
disp("Example 5.29")
printf("\n")
disp("calculate input & output impedance of amplifier with negative feedback")
printf("Given\n")
//input impedance without feedback
Zb=10^3
//open loop voltage gain
Av=7533
//input side resistance
R1=68*10^3
R2=47*10^3
//feedback factor
B=1/101
//input impedance with feedback
Zi=Zb*(1+(B*Av))
//input impedance with feedback by considering R1 & R2
Rp=(R1*R2)/(R1+R2)
Zin=(Zi*Rp)/(Zi+Rp)
//output impedance without feedback
Zc=50*10^3
Rc=3.9*10^3
//output impedance with feedback
Zo=Zc/(1+(B*Av))
//output impedance with feedback by considering Rc
Zout=(Rc*Zo)/(Rc+Zo)
printf("input impedance with negative feedback \n%f ohm\n",Zin)
printf("output impedance with negative feedback \n%f ohm\n",Zout)

