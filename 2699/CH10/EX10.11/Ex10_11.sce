//EX10_11 PG-10.50
clc
disp("Refer to the figure-10.45 and figure-10.45(a)shown")
//the circuit is a non inverting amplifier
Vin=10;//input voltage
//opamp input current is zero...
R1=10e3;//resistance connected to the -ve terminal of the amplifier
R2=1e3;//resistance connected to the +ve terminal of the amplifier to the input voltage 
R3=1e3;////resistance connected to the +ve terminal of the amplifier to the gound
Rf=50e3;//feedback resistance
I=Vin/(R2+R3);
Vb=I*R3;
V0=(1+Rf/R1)*Vb;//output voltage
printf("\n output voltage Vo=%.f V \n",V0)
