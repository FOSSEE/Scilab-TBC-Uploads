//chapter 2
//example 2.6
//page 42
clear;
clc ;
//given
VF=0.7;//forward voltage drop across diode
Rl=500;//load resistor in ohm
Vp=30;//input voltage in volts

//peak o/p voltage
Ep=Vp-VF;

//peak o/p current
Ip=((Vp-VF)/Rl)*10^3;

//for half wave rectifier
Iave= (0.637 * Ip)/2; //average current through diode
//power dissipation
PD= Iave * VF;

//Peak Reverse Voltage(PRV)
PRV=2*Vp;
 
 printf('\npeak o/p voltage=%.1f V\n',Ep);
 printf('peak o/p current=%.1f mA\n',Ip); 
 printf('power dissipation=%d mW\n',PD); 
 printf('Peak Reverse Voltage(PRV)=%d V',PRV); 
