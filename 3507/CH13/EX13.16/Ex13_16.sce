//chapter13
//example13.16
//page290

Ao=1000
Rout=1 // ohm
Rl=4 // ohm
Rin=2d3 // ohm
I2=0.5 // A

// here I2/I1=Ao*Rin/(Rout+Rl) so
I1=I2*(Rout+Rl)/(Ao*Rin)
V1=I1*Rin // in V

printf("required input signal voltage = %.3f mV \n",V1*1d3)
