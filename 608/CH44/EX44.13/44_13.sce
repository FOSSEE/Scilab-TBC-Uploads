//Problem 44.13: A cable which has a characteristic impedance of 75 ohm is terminated in a 250 ohm resistive load. Assuming that the cable has negligible losses and the voltage measured across the terminating load is 10 V, calculate the value of (a) the reflection coefficient for the line, (b) the incident current, (c) the incident voltage, (d) the reflected current, and (e) the reflected voltage.

//initializing the variables:
Zo = 75; // in ohm
ZR = 250; // in ohm
VR = 10; // in Volts

//calculation:
//reflection coefficient
p = (Zo - ZR)/(Zo + ZR)
//Current flowing in the terminating load
IR = VR/ZR
//incident current, Ii
Ii = IR/(1 + p)
//incident voltage, Vi  
Vi = Ii*Zo
//reflected current, Ir
Ir = IR - Ii
//reflected voltage, Vr
Vr = -1*Ir*Zo

printf("\n\n Result \n\n")
printf("\n reflection coefficient is %.3f",p)
printf("\n incident current, Ii is %.4f A",Ii)
printf("\n incident voltage, Vi is %.2f V",Vi)
printf("\n reflected current, Ir is %.4f A",Ir)
printf("\n reflected voltage, Vr is %.2f V",Vr)
