//chapter 10 Ex 25

clc;
clear;
close;
pop=176400; rate=5/100; years=2;
popafter=pop*(1+rate)^years;
popbefore=pop/((1+rate)^years);
mprintf("The population 2 years after is %d \n and 2 years before was %d",popafter,popbefore);
