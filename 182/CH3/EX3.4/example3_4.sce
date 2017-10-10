// To find the Shut resistance of the ammeter
// example 3-4 in paage 43
clc;
//Given data
A=['b' 'a'];
Im=100*10^-6;// FSD(Im) in ampere
Rm=1000;// Coil resistance is 1 K-ohm
// calculation
I=10;// FSD initialisation
m=0;
while I>0.1,
    I=I/10;
    Vm=Im*Rm;//voltage across the meter in volts
    Is=I-Im;//current through shunt resistance in ampere
    Rs=Vm/Is;//shunt resistance in ohm
    m=m+1;
    printf("(%c) shunt resistance value for %.1f A FSD is %f ohm\n ",A(m),I,Rs);
end