//Chapter 2,Example 2.2 Page 79
clc
clear
// based on the circuit Fig.Ex.2.2
V = 100 // kVA
R = (1/100)*(200^2/0.1) // Resistance of transformer
r = (5/100)*(200^2/0.1) // reactance of transformer
printf (" Resistance of transformer = %d ohm \n ",R)
printf (" Reactance of transformer = %d ohm \n ",r)
rC = 400/0.5 // Reactance of capacitor
rI = 20 // Inductive reactance
ArI = rC-rI // Additional inductive reactance
Ic = ArI*1000/314 // inductance required
TrC = 8 // total reactance in cercuit in Kohm
I = 0.5
Vsec = I*TrC // Secondary voltage
Vp = 4*(250/200) // primary voltage
printf (" Reactance of capacitor = %d K ohm \n ",rC)
printf (" Inductive reactance = %d ohm \n ",rI)
printf (" Additional inductive reactance k Ohm= %d  \n ",ArI)
printf (" Inductive required = %d H \n ",Ic)
printf (" Total reactance in cercuit = %d Kohm \n ",TrC)
printf (" Secondary voltage = %d kV \n ",Vsec)
printf (" Secondary voltage = %d volts \n ",Vp)
 
// Answers may vary due to round off error
