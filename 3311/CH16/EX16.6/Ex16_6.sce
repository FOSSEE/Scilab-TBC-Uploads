// chapter 16
// example 16.6
// Determine maximum duty cycle and flyback convertor turns ratio
// page-1007
clear;
clc;
// given
fs=60; // in kHz (switching frequency)
Esp=180; // in V (spike voltage)
Mains=230; // in V (mains supply)
f=50; // in Hz (supply frequency)
E0=12; // in V
E_DS=1200; // in V (used in the book, voltage across MOSFET)
// calculate
Edc=Mains*sqrt(2); // calculation of peak mains voltage
// since E_DS=(Edc/(1-alpha_max)+Esp, therefore we get
alpha_max=1-(Edc/(E_DS-Esp)); // calculation of maximum duty cycle
// since E0=(alpha_max/(1-alpha_max))*(N2/N1)*Edc, therefore we get
K=(Edc/E0)*(alpha_max/(1-alpha_max)); // calculation of flyback convertor turns ratio
printf("\nThe maximum duty cycle is \t\t alpha_max=%.2f",alpha_max);
printf("\nThe flyback convertor turns ratio is \t N2/N1=%.1f",K);
// Note : the answer vary slightly due to precise calculations