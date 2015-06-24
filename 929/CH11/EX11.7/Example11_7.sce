//Example 11.7

clear;

clc;

VCC=15;

Vref=2.5;

Io=100*10^(-3);

Ib=0.5*10^(-3);

R=Vref/Io;

R1=(VCC-Vref)/Ib;

printf("(a) R=%.f ohms",R);

printf("\n    R1=%.f kohms",R1*10^(-3));

R2=1*10^3;

VECsat=0.2;

VLmax=VCC-Vref-VECsat;

Vin=VCC-Vref;

b=100;

IB=1*10^(-3);

VEBon=0.7;

Vo=VCC-Vref-VEBon-(R2*IB);

Is=IB;

printf("\n\n(b) Voltage Compliance (VL)=%.1f V",VLmax);

printf("\n    The 741 inputs are at %.1f V which is within the input voltage range specifications.",Vin);

printf("\n    The 741 output is at %.1f V which is below VOH=13 V.",Vo);

printf("\n    The 741 sinks a current of %.f mA which is below Isc=25 mA.",Is*10^3);