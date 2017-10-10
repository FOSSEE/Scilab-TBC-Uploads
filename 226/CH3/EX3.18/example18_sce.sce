//chapter 3
//example 3.18
//page 112
printf("\n")
printf("given")
Zz=7;Es=16;Vo=6.2;Il=59.5*10^-3;
es=(10*Es)/100//10% os Es
Rl=Vo/Il;
disp("es*Zz||Rl/R1+Zz||Rl")
V0=es*((Zz*Rl)/(Zz+Rl))/(Rl+((Zz*Rl)/(Zz+Rl)))
lineregulation=(V0*100)/Vo;
printf("line regulation voltage is %3.3fpercentage\n",lineregulation)
V0=Il*((Zz*Rl)/(Zz+Rl))
loadregulation=(V0*100)/Vo;
printf("loadregulation voltage is %3.3fpercentage\n",loadregulation)
Rr=((Zz*Rl)/(Zz+Rl))/(Rl+(Zz*Rl)/(Zz+Rl));
printf("ripple rejection is %3.3f\n",Rr)