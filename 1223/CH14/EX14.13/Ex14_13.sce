clear;
clc;
//Example 14.13
R1=10;
R2=100;
Ib1=1.1*10^-3;
Ib2=1*10^-3;
vo=Ib1*R2;
printf('\noutput voltage =%.2fV\n',vo)
R3=R1*R2/(R1+R2);
printf('\nR3=%.2f KOhm\n',R3)
vo=R2*(Ib1-Ib2);
printf('\noutput voltage=%.2f V\n',vo)
