//Chapter 2
//Example 2.2
//PhaseProb
//Page 26
clear;clc;


//Given line-line voltages
Vab = 173.2 * (cos (0)+ sin(0) * %i);
Vbc = 173.2 * (cos (240*%pi/180)+ sin(240*%pi/180) * %i);
Vca = 173.2 * (cos (120*%pi/180)+ sin(120*%pi/180) * %i);
disp('The given line-line voltages are')


//'/_' this symbol has been used to show angle
printf("\n\n Vab = %.4f  /_ %.4f V \n\n",abs(Vab),((atan(imag(Vab),real(Vab)))*180/%pi))
printf("\n\n Vbc = %.4f  /_ %.4f V \n\n",abs(Vbc),((atan(imag(Vbc),real(Vbc)))*180/%pi))
printf("\n\n Vca = %.4f  /_ %.4f V \n\n",abs(Vca),((atan(imag(Vca),real(Vca)))*180/%pi))


//Calculation of line-neutral voltage
Van = (Vab / sqrt(3)/(0.866+0.5*%i));
Vbn = (Vbc / sqrt(3)/(0.866+0.5*%i));
Vcn = (Vca / sqrt(3)/(0.866+0.5*%i));
disp('The line-neutral voltages are')
printf("\n\n Van = %.4f  /_ %.4f V \n\n",abs(Van),((atan(imag(Van),real(Van)))*180/%pi))
printf("\n\n Vbn = %.4f  /_ %.4f V \n\n",abs(Vbn),((atan(imag(Vbn),real(Vbn)))*180/%pi))
printf("\n\n Vcn = %.4f  /_ %.4f V \n\n",abs(Vcn),((atan(imag(Vcn),real(Vcn)))*180/%pi))
ZL = 10 * (cos(20*%pi/180) + sin(20*%pi/180) * %i);
printf("\n\n Load Impedance ZL = %.4f  /_ %.4f ohms \n\n",abs(ZL),((atan(imag(ZL),real(ZL)))*180/%pi))


//Calculation of line-neutral current
Ian = Van / ZL;
Ibn = Vbn / ZL;
Icn = Vcn / ZL;
disp('The resulting current in each phase')
printf("\n\n Ian = %.4f  /_ %.4f A \n\n",abs(Ian),((atan(imag(Ian),real(Ian)))*180/%pi))
printf("\n\n Ibn = %.4f  /_ %.4f A \n\n",abs(Ibn),((atan(imag(Ibn),real(Ibn)))*180/%pi))
printf("\n\n Icn = %.4f  /_ %.4f A \n\n",abs(Icn),((atan(imag(Icn),real(Icn)))*180/%pi))
