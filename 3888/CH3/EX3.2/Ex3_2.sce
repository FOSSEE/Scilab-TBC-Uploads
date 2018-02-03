//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 3.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

vs=220;                          // Supply voltage in Volts
rs=5;                            // Series resistance in Ohms
rp=2;                            // Parallel resistance in Ohms
xlp=8*%i;                        // Parallel inductive reactance in Ohms
xcp=-6*%i;                       // Parallel capacitive reactance in Ohms
zeq=((rp+xlp)*xcp)/(rp+xlp+xcp); // Equivalent impedance of parallel branch in Ohms
I=vs/(rs+zeq);                   // Current in the series branch in Ampere
Ps=((I)^2)*rs;                   // Power in 5 ohm resistor Watts
I1=I*xcp/(rp+xlp+xcp);           // Current in branch ab in Ampere 
I2=I*(rp+xlp)/(rp+xlp+xcp);      // Current in branch cd in Ampere 
Pab=(I1^2)*rp;                   // Power loss in branch ab resistor in Watts
Qab=(I1^2)*xlp;                  // Power loss in branch ab inductor in VAR
Qcd=(I2^2)*(xcp);                // Power loss in branch cd capacitor in VAR

printf('The power loss in 5 ohm resistor is %.2f watts \n',abs(Ps))
printf('The power loss in branch ab resistor is %.2f watts \n',abs(Pab))
printf('The power loss in branch ab induoctor is %.2f VAR \n',abs(Qab))
printf('The power loss in branch cd capacitor is %.2f VAR \n',-abs(Qcd))         //Negative sign since capacitor supplies reactive power
