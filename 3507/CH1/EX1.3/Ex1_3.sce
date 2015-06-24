//chapter1
//example1.3
//page11

V=10 // V
R=10 // ohm

I=V/R // calculate short-circuit current by shorting AB
printf("equivalent current source has magnitude = %.3f A",I)

// no load is connected across AB and 10V source has negligible resistance
// so resistance across AB is 10 ohm

// the constant voltage source when converted to constant current source will thus have a source of 1A in parallel with resistor of 10 ohm 
