//chapter 13
//example 13.8
//page 566
printf("\n")
printf("given")
Av=25000;hie=2*10^3;hib=25;hoe=1/(100*10^3);R6=6.8*10^3;R5=220*10^3;R1=R6;R8=10*10^3;
B=R6/(R5+R6)
Acl=Av/(1+Av*B)
Zi=2*hie*(1+Av*B)
Zin=(Zi*R1)/(Zi+R1)
Zo=(1/hoe)/(1+Av*B)
Zout=(R8*Zo)/(R8+Zo);
printf("output impedance is %dohm\n",Zout)