//chapter9
//example9.3
//page146

R1=50 // ohm
R2=5 // ohm
V=10 // V

Eo=V*R2/(R1+R2) // thevenin voltage
Ro=R1*R2/(R1+R2) // thevenin resistance
I_D=Eo/Ro // current through diode in ampere

printf("current through diode = %.3f mA \n",I_D*1000)
