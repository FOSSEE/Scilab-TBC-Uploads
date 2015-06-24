clc
Vl=400 //Three phase supply voltage
Zph=100 //Impedance in ohms
Vph=Vl/sqrt(3) //For a star connected load
printf("\n Vph=%.2f V \n",Vph)
Iph=Vph/Zph
printf("\n Iph=%.2f A \n",Iph)
Il=Iph
pf=1
P=sqrt(3)*Vl*Il*pf
printf("\n P=%.1f W \n",P)
Vph=Vl //For a delta connected load
Iph=Vph/Zph
printf("\n Iph=%.0f A \n",Iph)
Il=sqrt(3)*Iph
printf("\n Il=%.2f A \n",Il)
P=sqrt(3)*Vl*Il*pf
printf("\n P=%.2f W \n",P)

