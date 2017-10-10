//chapter 16
//example 16.12
//page 705
printf("\n")
printf("given")
fs=1*10^6;Rs=700;C1=1000*10^-12;C2=100*10^-12;R1=1*10^6;R2=10*10^3;Rs=700;Vdd=5;
Ct=(C1*C2)/(C1+C2)
disp(" at resonance Xl=Xct    2*pi*f*L=1/2*pi*f*Ct")
L=1/(((2*3.14*fs)^2)*Ct)
ip=Vdd/(R1+R2+Rs)
Pd=(((.707*ip)^2)*Rs)*10^9;
printf(" peak power dissipated is %3.3fnW\n",Pd)