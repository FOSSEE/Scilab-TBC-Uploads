//chapter 13
//example 13.2
//page 549
printf("\n")
printf("given")
Rf2=560;Rf1=56*10^3;Av=100000;Zb=1*10^3;R1=68*10^3;R2=33*10^3;
B=Rf2/(Rf2+Rf1)
Zi=(1+Av*B)*Zb
Zin=(Zi*R1*R2)/(R1*R2+R1*Zi+R2*Zi);
printf("input impedance with negative feedback is %dohm\n",Zin)