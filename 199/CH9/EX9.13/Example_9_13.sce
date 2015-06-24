// Chapter9
// Page.No-458
// Example_9_13
// Design of stepdown switching regulator
// Given
clear;clc;
Iomax=3; // Max output current in ampere
Vo=5; // Output voltage in volt
Vd=1.25; // Voltage drop across the power diode in volt
Vin=12; // Input voltage in volt
Vs=1.1; // Output saturation voltage in volt
Vripple=50*10^-3; // Output ripple voltage in volt
Vref=1.245; // Reference voltage in volt
Vr2=1.2; // Voltage across resistance R2 in volt
Ipk=2*Iomax; // Sense current in ampere
printf("\n Sense current,Ipk is = %.f A \n",Ipk) // Result
Rsc=0.33/Ipk; // Sense resistance in ohm
printf("\n Sense resistance,Rsc is = %.3f ohm \n",Rsc) // Result
K=(Vo+Vd)/(Vin-Vs-Vo); // K= ton/toff
printf("\n Constant K = %.2f  \n",K) // Result
printf("\n i.e, ton is K times of toff \n")
f=20*10^3; // Assuming operating freq in Hz
T=1/f;
toff=T/2.06; // Using ton+toff=T and substituting for ton
printf("\n OFF time period,toff is = %.8f sec \n",toff) // Result
ton=1.06*toff;
printf("\n ON time period,ton is = %.8f sec \n",ton) // Result
Ct=45*10^-5*toff; // Oscillator timing capacitance in farad
printf("\n Oscillator timing capacitance,Ct is = %.10f F \n",Ct) // Result
L=((Vo+Vd)/Ipk)*toff; // Inductance in henry
printf("\n Inductance,L is = %.8f H \n",L) // Result
Co=Ipk*((ton+toff)/(8*Vripple)); // Output capacitance in farad
printf("\n Output capacitance,Co is = %.7f F \n",Co) // Result
