// chapter 2
// example 2.1
// fig. E2.1
// Will the thyristor get fired
// page-21-22
clear;
clc;
// given
I_L=50; // in mA (Latching current)
t=50; // in us (duration of fireing pulse)
R=20; // in ohm (resistance of ciicuit)
L=0.5; // in H (Inductance of circuit)
V=100; // in V (Battery voltage)
// calculate
tou=L/R; // calculation of total time period 
t=t*1E-6; // changing unit from us to sec
i=(V/R)*(1-exp(-t/tou)); // calculation of current at t=50 us
i=i*1E3; // changing unit from A to mA
printf("\nThe value of current is \t i(50 us) = %.2f mA\n",i);
if i<I_L then
    printf("\nSCR will not get fired");
    
    else printf("\nSCR will get fired");
end