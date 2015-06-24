//Problem 41.14: An asymmetrical pi-section attenuator is shown in Figure 41.28. Determine for the section (a) the image impedances, and (b) the iterative impedances.

//initializing the variables:
R1 = 1000; // in ohm
R2 = 2000; // in ohm
R3 = 3000; // in ohm
I1 = 1; // in amperes (lets say)

//calculation:
//image impedance Roa
Roa = (((R3 + R2)*R1/(R1 + R2 + R3))*(R1*R3/(R1 + R3)))^0.5
//image impedance Rob
Rob = (((R3 + R1)*R2/(R1 + R2 + R3))*(R2*R3/(R2 + R3)))^0.5
//The iterative impedance at port 1
Ri1 = (-1*R1 + ((R1^2) - (-1*4*2*R2*R1))^0.5)/(2*2)
//The iterative impedance at port 2
Ri2 = (R1 + ((-1*R1)^2 - (-1*4*2*R2*R1))^0.5)/(2*2)

printf("\n\n Result \n\n")
printf("\n image impedance are %.0f ohm and %.0f ohm ",Roa,Rob)
printf("\n iterative impedances are %.0f ohm and %.0f ohm ",Ri1,Ri2)