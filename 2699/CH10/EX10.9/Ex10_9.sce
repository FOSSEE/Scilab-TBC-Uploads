//EX10_9 PG-10.40
clc
R1=1e3;
Rf=10e3;//feedback resistance
A=1+Rf/R1;//gain of a non-inverting amplifier
printf("Gain is %.0f\n",A)
disp("For Vin =0.5V ")
Vin=0.5;//input voltage
Vo=A*Vin;
printf(" Output voltage Vo=%.1f V \n",Vo)
disp("For Vin =-3V ")
Vin=-3;//input voltage
Vo=A*Vin;
printf(" Output voltage Vo=%.1f V \n",Vo)
printf("\n but Vo=-33V is not possible. Output will saturate at -12V \n")
printf(" And the remaining portion will be clipped from output.")
