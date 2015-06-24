//To Determine the Fault parameters of Rural Substation
//Page 555
clc;
clear;

Vln=7200; //Line to Neutral Voltage
Vll=12470; //Line to Line Voltage
Z1sys=0.7199+(%i*3.4619); //system impedance to the regulated 12.47kV bus
ZGsys=0.6191+(%i*3.3397);//system impedance to ground
l=2; //Distance of the Fault from the substation
//From Table 10-7; Various Paramters Can Be found out
z0a=0.1122+(%i*0.4789);
z011=(-0.0385-(%i*0.0996));
z1=0.0580+(%i*0.1208);
C=5.28; //Cable constant

Z0ckt=2*(z0a+z011)*C; //Zero Sequence Impedance
Z1ckt=2*z1*C; //Positive Sequence Impedance
ZGckt=((2*Z1ckt)+Z0ckt)/3; //Impedance to ground of line
//Note That the calculation of the above term is wrong in the text book

Z1=Z1sys+Z1ckt; //Total Positive Sequence
ZG=ZGsys+ZGckt; //Total impedance to ground

If3phi=Vln/abs(Z1); //Three Phase Fault at point 10
IfLL=0.866*If3phi; //Line to Line Fault at point 10
IfLG=Vln/(abs(ZG)); //Single Line to Ground Fault

printf('\na) The Zero and Postive sequence impedance of the line to point 10 are:\n')
disp(Z0ckt)
disp(Z1ckt)
printf('b) The impedance to ground of the line to point 10\n')
disp(ZGckt)
printf('c) The Total positive sequence impedance including system impedance is\n')
disp(Z1)
printf('d) The Total Impedance to ground to point 10 including system impedance is\n')
disp(ZG)
printf('All the Above impedances are in ohm\n')
printf('e) The Three phase fault current at point 10 is %g A\n',If3phi)
printf('f) The line to line fault current at point 10 is %g A\n',IfLL)
printf('g) The Line to Ground Current at point 10 is %g A\n',IfLG)
