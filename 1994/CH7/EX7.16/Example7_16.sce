//Chapter-7,Example7_16,pg 7-42
Rsh=0.02
R=1000
Vm=500*10^-3
Im=Vm/R
Ish=Vm/Rsh
printf("shunt current\n")
printf("Ish=%.2f A\n",Ish)
Ish1=10
V=Ish1*Rsh
R=V/Im
printf("resistance for Ish=10A\n")
printf("R=%.2f ohm\n",R)
Ish2=75
V=Ish2*Rsh
R=V/Im
printf("resistance for Ish=75A\n")
printf("R=%.2f ohm\n",R)
