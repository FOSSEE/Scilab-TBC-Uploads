//example 3-3 in page 41
clc;
//Given Data
A=['a' 'b' 'c'];
m=0;
Rm=99;//coil resistance in ohm
IM=0.1e-3;//FSD(IM)=0.1 mA
Rs=1;//shunt resistance in ohm
//calculation
n=2;//initialisation
while n>0.25,
    n=n/2;
    Im=IM*n;
    Vm=Im*Rm;// Meter voltage in volts
    Is=Vm/Rs;//current throught the shunt resistance in ampere
    I=Im+Is;//toatal current through the ammeter I=Im+Is in ampere
    m=m+1;
    printf("(%c) current through the ammeter at %.2f FSD=%.1f mA\n",A(m),n,I*1000);
end