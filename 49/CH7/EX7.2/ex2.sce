//CHAPTER 7_ Flow Measurement
//Caption : Anemometers
// Example 2// Page 426
// To derive an expression for velocity across a hot  wire anemometer in terms of the wire resistance Rw, the current through the wire Iw and the empirical constants C0 and C1 and the fluid temperature.
disp("C0+C1(v)^.5)(Tw-Tf)=Iw^2Rw")
disp("Rw= Rr[1+a(Tw-Tr)]")
disp("Rw/Rr=1+a(Tw-Tr)")
disp("Tw-Tr=1/a[Rw/Rr-1]")
disp("Tw=1/a[Rw/Rr-1]+Tr")
disp("Co+C1(v)^0.5=Iw^2Rw/Tw-Tf")
disp("so,")
disp("v=1/C1[{Iw^2Rw/(1/a[Rw/Rr-1]+Tr-Tf)]}^2-C0")



