//chapter 13
//example 13.3
//page 552
printf("\n")
printf("given")
Zb=1*10^3;B=1/100;Av=5562;R1=68*10^3;R2=47*10^3;hoe=1/(50*10^3);Rc=3.9*10^3;
Zi=(1+Av*B)*Zb
Zin=(R1*R2*Zi)/(R1*R2+R2*Zi+R1*Zi)
Zo=(1/hoe)/(1+Av*B)
Zout=(Rc*Zo)/(Rc+Zo);
printf(" circuit output impedance is %dohm\n",Zout)