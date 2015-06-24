//Calculating secondary voltage and voltage regulation
//Chapter 3
//Example 3.16
//page 218
clear;
clc; 
disp("Example 3.16")
kVA=10;                //rating of the transformer
V1=2000;                //primary voltage in volts
V2=400;                //secondary voltage in volts
R1=5.5;                //primary voltage in ohms
R2=0.2;                //secondary voltage in ohms
X1=12;                  //primary reactance in ohms
X2=0.45;                //secondary reactance in ohms
//assuming  (V1/V2)=(N1/N2)
Re=R2+(R1*(V2/V1)^2);
printf("equivalent resistance referred to the secondary=%fohms",Re);
Xe=X2+(X1*(V2/V1)^2);
printf("equivalent reactance referred to the secondary=%fohms",Xe);
Ze=sqrt(Re^2+Xe^2);
printf("equivalent impedance referred to the secondary=%fohms",Ze);
phi=acosd(0.8);
Vl=374.5;
printf("\nVoltage across the full load and 0.8 p.f lagging=%fV",Vl);
reg=((V2-Vl)*100)/Vl;
printf("\npercentage voltage regulation=%f percent",reg);

