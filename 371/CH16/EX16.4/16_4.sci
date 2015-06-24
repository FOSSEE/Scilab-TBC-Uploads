//Faults and Protection//
//Example 16.4//
Ls=0.1;//stray inductance in the circuit in milli Henry//
L=2*Ls;//inductance required for the snubber ckt for protection in mH//
Im=250;//mean value of current in amp//
C=2.5*Im;//capacitance required for the snubber ckt in nano Farads//
printf('capacitance in snubber circuit=C=%fnanofarads',C);
R=2*100*sqrt(L/C);//resistance in snubber circuit in Kilo Ohms//
printf('\nResistance in snubber circuit=R=%fKilo Ohms',R);
Pdif=1*30;//permissible dv/dt of the circuit//
printf('\nPermissible dv/dt of the circuit=%fMV/s',Pdif);
