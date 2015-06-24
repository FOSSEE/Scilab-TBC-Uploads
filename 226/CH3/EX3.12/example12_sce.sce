//chapter 3
//example 3.12
//page 97
printf("\n")
printf("given")
Eo=20;Il=40*10^-3;R1=22;Vr=2;C1=150*10^-6;C2=C1;fr=120;
Vo=Eo-Il*R1;
vi=Vr/3.14
Xc2=1/(2*3.14*fr*C2)
vo=(vi*Xc2)/sqrt((R1^2) + (Xc2^2))
printf(" dc output voltage is %3.3fV\n",vo)
Vpp=2*vo;
printf(" peak to peak voltage is %3.3fV\n",Vpp)