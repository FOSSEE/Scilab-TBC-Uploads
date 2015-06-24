clc;
// The combustion equation for C4H10 with 80% theoretical air is C4H10 +5.2(O2 + 3.76 N2) → a(1)CO + a(2)CO2 + 5H2O + 19.55N2
// The following matrix shows the balance of C and O
A=[1 1 ; 1 2];
B=[4 ;5.4];
a=A\B;
disp ("The equation for the combustion of butane with 80% theoretical air is ")
printf ("\n C4H10 +5.2(O2 + 3.76 N2) → %0.1f CO + %0.1f CO2 + 5H2O + 19.55N2",a(1),a(2));
