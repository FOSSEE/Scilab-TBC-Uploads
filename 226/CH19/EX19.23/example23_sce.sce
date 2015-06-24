//chapter 19
//example 19.23
//page 871
printf("\n")
printf("given")
Vcc=23;Rl=8;Rf2=100*10^3;Rf1=5.6*10^3;Cf=1*10^-6;
Vp=Vcc-5
Po=(Vp)^2 /(2*Rl);
printf("maximum output power is %3.2fW\n",Po)
Acl=(Rf1+Rf2)/Rf1;
printf(" voltage gain %3.1f\n",Acl)
f=1/(2*3.14*Cf*Rf1);
printf("lower cutoff frequency is %dHz\n",f)