//chapter 2
//example 2.10
//page 49
printf("\n")
printf("given")
Vf1=.7;Vf=-1.8*10^-3;If=26*10^-3;
T=100-25;
Vf2=Vf1+(T*Vf);
printf(" voltage at 100C is %3.3fV\n",Vf2)
disp("At 25C")
T1=25;
rd=(26*10^-3/If)*((T1+273)/298);
printf(" resistance at 25 C is %dohm\n",rd)
disp(" At 100C")
T2=100;
rd=(26*10^-3/If)*((T2+273)/298);
printf(" resistance at 100 C is %3.2fohm\n",rd)