//chapter 11
//example 11.2
//page 443
printf("\n")
printf("given")
Yos=10*10^-6;Yfs=3000*10^-6;R1=1*10^6;R2=5.6*10^6;Rd=2.7*10^3;Rl=Rd;
rd=1/Yos
Zi=((R1*R2)/(R1+R2))*10^-3;
printf("input impedance is %dKohm\n",Zi)
Zo=(Rd*rd)/(Rd+rd);
printf(" output inpedance is %dohm\n",Zo)
Av=-Yfs*((Rl*rd)/(Rl+rd))