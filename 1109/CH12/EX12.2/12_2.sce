clear;
clc;
Z1=10;Z2=5;Z3=2;I1=2;I2=4;
Vab1=I1*(1/((1/Z2)+(1/(Z1+Z3))));
I5=I2*Z3/(Z1+Z2+Z3); //I5=current through the 5 ohm resistor
Vab2=Z2*I5;
Vab=Vab1+Vab2;
printf("Vab = %f volts",round(Vab*100)/100);
