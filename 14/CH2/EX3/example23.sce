//Chapter 2
//Example 2.3 
//Page 28
clear;clc;
//Given values
Vll = 4.4e3;
Vln = Vll / sqrt(3);
Zline = 1.4 * (cos(75 * %pi / 180) + %i * sin (75 * %pi / 180));
Van = Vln * (cos(0) + %i * sin(0));
Zload = 20 * (cos(30 * %pi / 180) + %i * sin(30 * %pi / 180));
printf("\n\n Given line-line voltage = %.4f V \n\n",Vll)
printf("\n\n Line-neutral voltage = %.4f V \n\n",Vln)
//disp(abs(Zload),'Magnitude  of load impedance Z = ')
//disp(atan(imag(Zload),real(Zload))*180/%pi,'Phase Angle of load impedance Z = ')
//'/_' this symbol has been used to specify angle
printf("\n\n Impedance of the load = %.4f  /_ %.4f ohms \n\n",abs(Zload),((atan(imag(Zload),real(Zload)))*180/%pi))
printf("\n\n Impedance of the line = %.4f  /_ %.4f ohms \n\n",abs(Zline),((atan(imag(Zline),real(Zline)))*180/%pi))
//Calculation of phase current
Ian = Van / Zload;
//'/_' this symbol has been used to specify angle
printf("\n\n Van = %.4f  /_ %.4f V \n\n",abs(Van),((atan(imag(Van),real(Van)))*180/%pi))
printf("\n\n Ian = %.4f  /_ %.4f V \n\n",abs(Ian),((atan(imag(Ian),real(Ian)))*180/%pi))
//Calculation of line-neutral voltage at the substation
Vltn = Van + Ian * Zline;
//Magnitude of the voltage at the substation bus
magVl = sqrt(3) * abs(Vltn);
printf("\n\n The line to neutral voltage at the substation = %.4f /_ %.4f V \n\n",abs(Vltn),((atan(imag(Vltn),real(Vltn)))*180/%pi))
printf("\n\n The magnitude of the voltage at the substation bus = %.4f V",magVl)