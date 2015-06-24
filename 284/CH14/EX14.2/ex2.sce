// Chapter 14_Semiconductor Power Devices
//Caption_Power MOSFET characteristics
//Ex_2//page-658
VDD=24
PT=30   //Maximum rated power
ID1max=5    //Maximum rated current
ID2max=4
RD1=VDD/ID1max     //Drain resistance
RD2=VDD/ID2max
ID1=VDD/(2*RD1)    //Current at the maximum power point
ID2=VDD/(2*RD2)
VDS1=VDD-ID1*RD1     //Drain to source voltage
VDS2=VDD-ID2*RD2
P1=VDS1*ID1   //Maximum power that may be dissipated in transistor
P2=VDS2*ID2
printf('The maximum dissipated power in first case is %1.0f W which corresponds to the maximum rated power while in second case is %1.0f W which is less than the maximum rated power',P1,P2)
