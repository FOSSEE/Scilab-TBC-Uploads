//Chapter 2
//Example 2.4 
//Ex3inPerUnit
//Page 32
clear;clc;


//Given values
Vll = 4.4e3;
Zline = 1.4 * (cos(75 * %pi / 180) + %i * sin (75 * %pi / 180));
Zload = 20 * (cos(30 * %pi / 180) + %i * sin(30 * %pi / 180));
Vbase = Vll;
Ibase = 127;
Zbase = (Vbase / sqrt(3)) / Ibase ;

//Displaying the given values and the base values
printf("\n\n Given line-line voltage = %.4f V \n\n",Vll)
printf("\n\n Impedance of the load = %.4f  /_ %.4f ohms \n\n",abs(Zload),((atan(imag(Zload),real(Zload)))*180/%pi))
printf("\n\n Impedance of the line = %.4f  /_ %.4f ohms \n\n",abs(Zline),((atan(imag(Zline),real(Zline)))*180/%pi))
printf("\n\n Base Voltage = %.4f V \n\n ",Vbase)
printf("\n\n Base Current = %.4f V \n\n",Ibase)
printf("\n\n Base Impedance = %.4f V \n\n",Zbase)
Van = (Vll / sqrt(3)) * (cos(0) + %i * sin(0));
Ian = Van / Zload;
printf("\n\n Van = %.4f  /_ %.4f V \n\n",abs(Van),((atan(imag(Van),real(Van)))*180/%pi))
printf("\n\n Ian = %.4f  /_ %.4f V \n\n",abs(Ian),((atan(imag(Ian),real(Ian)))*180/%pi))


//Calculation of per-unit quantities
V_pu = Vll / Vbase;
I_pu = Ian / Ibase;
Zline_pu = Zline / Zbase;
Zload_pu = Zload / Zbase;
Van_pu = V_pu + I_pu * Zline_pu;
disp('Per-unit Quantities')
printf("\n\n Per Unit line-line voltage = %.4f  /_ %.4f per unit \n\n",abs(V_pu),((atan(imag(V_pu),real(V_pu)))*180/%pi))
printf("\n\n Per Unit line-neutral current = %.4f  /_ %.4f per unit \n\n",abs(I_pu),((atan(imag(I_pu),real(I_pu)))*180/%pi))
printf("\n\n Per Unit line-neutral voltage = %.4f  /_ %.4f per unit \n\n",abs(Van_pu),((atan(imag(Van_pu),real(Van_pu)))*180/%pi))
printf("\n\n Per Unit line impedance  = %.4f  /_ %.4f per unit \n\n",abs(Zline_pu),((atan(imag(Zline_pu),real(Zline_pu)))*180/%pi))
printf("\n\n Per Unit load impedance = %.4f  /_ %.4f per unit \n\n",abs(Zload_pu),((atan(imag(Zload_pu),real(Zload_pu)))*180/%pi))


//Calculation of line-neutral and line-line voltage
Vln = abs(Van_pu) * Vll / sqrt(3);
VLL = abs(Van_pu) * Vll;
printf("\n\n The line to neutral voltage at the substation , VLN = %.4f /_ %.4f V \n\n",abs(Vln),((atan(imag(Vln),real(Vln)))*180/%pi))
printf("\n\n The magnitude of the voltage at the substation bus , VLL= %.4f V",VLL)
