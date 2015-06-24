//chapter 8
//example 8.5
//page 319
printf("\n")
printf("given")
R1=100*10^3;R2=47*10^3;Re=4.7*10^3;
Cbc=5*10^-12;Cbe=24.4*10^-12;hfe=50;hie=1.3*10^3;hib=24.5;rs=hib;rs=600;
disp(" common emitter circuit")
Rb=(R1*R2)/(R1+R2);
Zi=(Rb*hie)/(Rb+hie)
Cin=1.48*10^-9;
f2=1/(2*3.14*Cin*((rs*Zi)/(rs+Zi)));
printf("input-capacitance upper cutoff frequency is %dHz\n",f2)
disp("common base circuit")
Zi=(Re*hib)/(Re+hib)
Cin=(Cbe+Cbc)
f2=(1/(2*3.14*Cin*((rs*Zi)/(rs+Zi))))*10^-6;
printf(" input capacitance upper cutoff when operating as CB circuit with base bypassed to ground is %dMHz\n",f2)