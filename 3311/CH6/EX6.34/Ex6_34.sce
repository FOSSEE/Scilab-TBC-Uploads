// chapter 6
// example 6.34
// Calculate delay angle, power delivered and fundamental reactive power
// page-377-378
clear;
clc;
// given
E_line=580; // in V (line to line supply voltage)
f=50; // in Hz (supply frequency)
I0=3464; // in A (load current)
Edc=648; // in V (average output voltage)
// calculate
Em=sqrt(2/3)*E_line;
// since Edc=(3*sqrt(3)/%pi)*Em*cosd(alpha), therefore we get
alpha=acosd(%pi/(3*sqrt(3)*Em)*Edc);
Pdc=Edc*I0;
Pdc=Pdc*1E-3;
Pac=1.05*Pdc;
Q_KVAR=sqrt(Pac^2-Pdc^2);
printf("\nThe delay angle is \t\t\t\t\t\t\t %.2f degree",alpha);
printf("\nThe power delivered to the load is \t\t\t\t\t Pdc=%.2f kW",Pdc);
printf("\nThe fundamental reactive power drawn from the supply in KVAR is \t %.2f",Q_KVAR);
// Note: The answers vary slightly due to precise calculation upto 6 decimal digits.In the book, the calculation is done upto 2 decimal digit