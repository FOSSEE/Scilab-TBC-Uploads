clc();
clear;
//Given :
Vin = 36; // Input Voltage in V
Vb = 6; // Zerner Breakdown Voltage in V
Vr = Vin-Vb; // Volatge drop across resistor
R = 5*10^3; // resistance in ohm
Rl = 2*10^3; // load resistance in ohm
I = Vr/R; // current in A
Il = Vb/Rl; // current  in A
Iz = I - Il ;// current in A
//(a)
Vin1 = 41; // Input Voltage in V
I1 = (Vin1-Vb)/R; // current in A
Iz1 = I1-Iz; // current in A
//(b)
Rl1 = 4*10^3; //load  resistance in ohm
Il1 = Vb/Rl1; // current in A
Iz2 = I - Il1; // current in A
printf("Input volatge = 41 V , Iz = %.0f mA\n",Iz1*10^3);
printf("Load resistance = 4k ohm , Iz = %.1f mA",Iz2*10^3);

