//chapter 18
//example 18.1
//page 761
printf("\n")
printf("given")
Vs=21;Vo=12;Av=100;
vo=(Vs*.1)/Av;//source effect is 10% of the Vs
printf(" source effect is %3.3fV\n",vo)
vo=(21-20)/100;
printf(" laod effect is %3.3fV\n",vo)
LR=(21*10^-3 *100)/12;
printf("line regulation is %3.3fpercentage\n",LR)
LR=(10*10^-3*100)/12;
printf(" load effect is %3.3fpercentage \n",LR)
RJ=20*log10(1/Av);
printf("ripple rejection is %ddB\n",RJ)