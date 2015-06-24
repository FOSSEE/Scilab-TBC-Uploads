//chapter 15
//example 15.8
//page 659
printf("\n")
printf("given")
ro=25;f=2*10^6;R2=10*10^3;Rx=25;
Cl=(1/(2*3.14*f*(10*ro)))*10^+12;
printf(" load capacitance is %3.2fpF\n",Cl)
Cl=.1*10^-6;
C2=((Cl*(ro+Rx))/R2)*10^12;
printf(" compensation capacitance is %dpF\n",C2)