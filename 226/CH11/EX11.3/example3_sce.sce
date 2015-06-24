//chapter 11
//example 11.3
//page 447
printf("\n")
printf("given")
Yos=10*10^-6;Yfs=4000*10^-6;Ig=1*10^-9;Vgs=15;Rs=3.3*10^3;Rg=1*10^6;Rd=4.7*10^3;Rl=33*10^3;
rd=1/Yos
Rgs=(Vgs/Ig)
Zg=(Rgs*(1+Yfs*Rs))
Zi=Rg;
Zd=rd+Rs+(Yfs*Rs*rd)
Zo=(Rd*Zd)/(Rd+Zd)
Av=-(Yfs*((Rd*Rl)/(Rd+Rl)))/(1+Yfs*Rs)
Av=-((Rd*Rl)/(Rd+Rl))/Rs