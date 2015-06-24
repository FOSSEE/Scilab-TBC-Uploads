//chapter 8
//example 8.8
//page 326
printf("\n")
printf("given")
ton=100*10^-9;Rs=600;Rb=4.7*10^3;
C1=(ton/Rs)*10^12;
printf(" suitable speed up capacitor is %dpF\n",C1)
C1=160*10^-12;//standard value
PWmin=(5*Rs*C1);
SWmin=5*Rb*C1;
fmax=1/(PWmin+SWmin);
printf("maximum signal frequency is %dHz\n",fmax)