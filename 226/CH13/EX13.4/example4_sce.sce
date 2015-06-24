//chapter 13
//example 13.4
//page 554
printf("\n")
printf("given")
Zb=1*10^3;hoe=1/(85*10^3);Av=58000;Rf2=220;Rf1=16.2*10^3;R1=120*10^3;R2=39*10^3;R7=12*10^3;
B=Rf2/(Rf2+Rf1)
disp("voltage gain")
Acl=Av/(1+Av*B)
Zi=Zb*(1+Av*B)
Zin=(Zi*R1*R2)/(Zi*R1+R2*R1+R2*Zi)
Zo=(1/hoe)/(1+Av*B)
Zout=(R7*Zo)/(R7+Zo)
printf("output impedance is %dohm\n",Zout)