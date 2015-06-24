//Problem 19.04: A 415 V, 3-phase, 4 wire, star-connected system supplies three resistive loads as shown in Figure 19.7. Determine (a) the current in each line and (b) the current in the neutral conductor.

//initializing the variables:
V = 415; // in Volts
PR = 24000; // in Watt
Py = 18000; // in Watt
Pb = 12000; // in Watt
VR = 240; // in Volts
Vy = 240; // in Volts
Vb = 240; // in Volts

//calculation:
//For a star-connected system VL = Vp*(3^0.5)
Vp = Vl/(3^0.5)
phir = 90*%pi/180
phiy = 330*%pi/180
phib = 210*%pi/180
// I = P/V  for a resistive load
IR = PR/VR
Iy = Py/Vy
Ib = Pb/Vb
Inh = IR*cos(phir) + Ib*cos(phib) + Iy*cos(phiy)
Inv = IR*sin(phir) + Ib*sin(phib) + Iy*sin(phiy)
In = (Inh^2 + Inv^2)^0.5

printf("\n\n Result \n\n")
printf("\n (a)cuurnt in R line is %.0f A, cuurnt in Y line is %.0f A and cuurnt in B line is %.0f A",IR,Iy,Ib)
printf("\n (b)cuurnt in neutral line is %.1f A",In)