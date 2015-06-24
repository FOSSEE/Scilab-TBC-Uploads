clear;
//clc();
f=50;
cap=1.2*10^(-6);
xl=1/(3*2*(%pi)*cap*f);
printf("The inductive reactance to neutralize 100 percent of the capacitance is:%.2f Ohm\n",xl);

xl1=xl/0.9;
printf("The inductive reactance to neutralize 90 percent of the capacitance is:%.2f Ohm\n",xl1);

xl2=xl/0.8;
printf("The inductive reactance to neutralize 80 percent of the capacitance is:%.2f Ohm",xl2)

