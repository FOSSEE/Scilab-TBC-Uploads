//Ex12.6.1.;calculate open circuit voltage and maximum power output
B=2;//flux density;unit=Wb/m^2
u=10^3;//average gas velocity;unit=m/second
d=0.50;//distance between plates;unit=m
E0=B*u*d;//Open ccircuit voltage
printf(" Open ccircuit voltage E0=%f Volts",E0);
//Generator resistance; Rg=d/sigma*A
sigma=10;//Gaseous conductivity;unit=Mho/m
A=0.25;//Plate Area;unit=m^2 
Rg=d/(sigma*A);
printf("\n Generator resistance Rg=%f Ohm",Rg);
//Maximum power
Maximum_power=(E0^2)/(4*Rg);
printf("\n Maximum_power=%f watts",Maximum_power);
