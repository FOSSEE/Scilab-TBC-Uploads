//Problem 41.13: An asymmetrical T-section attenuator is shown in Figure 41.24. Determine for the section (a) the image impedances, and (b) the iterative impedances.

//initializing the variables:
R1 = 100; // in ohm
R2 = 200; // in ohm
R3 = 300; // in ohm
I1 = 1; // in amperes (lets say)

//calculation:
//image impedance Roa
Roa = ((R1 + R2)*(R2 + (R1*R3/(R1 + R3))))^0.5
//image impedance Rob
Rob = ((R1 + R3)*(R3 + (R1*R2/(R1 + R2))))^0.5
//The iterative impedance at port 1
Ri1 = (-1*R1 + (R1^2 - (-1*4*((R2*(R1 + R3)) + (R3*R1))))^0.5)/2
//The iterative impedance at port 2
Ri2 = (R1 + (R1^2 - (-1*4*((R3*(R1 + R2)) + (R2*R1))))^0.5)/2

printf("\n\n Result \n\n")
printf("\n image impedance are %.1f ohm and %.0f ohm ",Roa,Rob)
printf("\n iterative impedances are %.1f ohm and %.1f ohm ",Ri1,Ri2)