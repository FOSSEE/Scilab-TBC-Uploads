clc
disp("Example 5.27")
printf("\n")
disp("calculate input impedance of amplifier with negative feedback")
printf("Given\n")
//input impedance without feedback
Zb=10^3
//open loop voltage gain
Av=100000
//feedback network resistance
RF1=56*10^3
RF2=560
//input side resistance
R1=68*10^3
R2=33*10^3
//feedback factor
B=RF2/(RF1+RF2)
//input impedance with feedback
Zi=Zb*(1+(B*Av))
//input impedance with feedback by considering R1 & R2
Rp=(R1*R2)/(R1+R2)
Zin=(Zi*Rp)/(Zi+Rp)
printf("input impedance with negative feedback \n%f ohm\n",Zin)
