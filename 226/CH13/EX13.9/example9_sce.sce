//chapter 13
//example 13.9
//page 568
printf("\n")
printf("given")
hic=2*10^3;hie=hic;hfe=100;hfc=100;Av=25000;B=1/33.4;R8=10*10^3;R5=R8;
Ze=(hic+R8)/hfc
Zo=Ze/(1+Av*B)
Zout=(R5*Zo)/(R5+Zo);
printf("output impedance is %3.2fohm\n",Zout)