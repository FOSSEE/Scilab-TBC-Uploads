//chapter 6
//example 6.1
//page 240
printf("\n")
printf("given")
Vcc=12;R2=15*10^3;R1=33*10^3;rs=600;
disp("with no signal source")
Vb=(Vcc*R2)/(R1+R2);
printf(" base bais voltage when no signal source is present %3.2fV\n",Vb)
disp(" signal source directly connected")
Vb=(Vcc*((rs*R2)/(rs+R2))/(R1+((rs*R2)/(rs+R2))));
printf("base bais voltage is %3.2fV\n",Vb)