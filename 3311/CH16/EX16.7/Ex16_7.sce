// chapter 16
// example 16.7
// Determine average input power and current, ratings of the trasistor, primary winding indutance and number of turns, and ratings of the diode
// page-1007-1009
clear;
clc;
// given
Edc_min=14, Edc_max=30; // in V (range of supply voltage)
V1=12, V2=-12, // in V (output voltages)
I1=0.6, I2=0.6; // in A (output current)
i_1=0.1, i_2=0.5; // in A (range of load current)
neta=80; // in % (efficiency of the convertor)
fs=50; // in kHz (switching frequency)
alpha_max=0.5; // assumption as done in the book
L0=80; // in mH  (assumption as done in the book)
N0=1100; //  (assumption as done in the book)
// calculate
fs=fs*1E3; // changing unit from kHz to Hz
L0=L0*1E-3; // changing unit from mH to H
P0=(V1*I1)+(-V2*I2); // calculation of full-load power
Pi=P0/(neta/100); // calculation of input power
I_avg_max=Pi/Edc_min; // calculation of maximum average input current
I_avg_min=Pi/Edc_max; // calculation of minimum average input current
Ic_max=2*P0/((neta/100)*Edc_min*alpha_max); // calculation of transistor current rating
V_CE_max=Edc_max/(1-alpha_max); // calculation of transistor voltage rating
Pd_max=V_CE_max*Ic_max; // calculation of transistor power rating
L_prim=Edc_min*alpha_max/(Ic_max*fs); // calculation of primary inductance
N_prim=N0*sqrt(L_prim/L0); // calculation of number of turns in primary winding
// since E0=(alpha_max/(1-alpha_max))*(N2/N1)*Edc, therefore we get
N_sec=(V1/Edc_min)*N_prim*((1-alpha_max)/alpha_max); // calculation of number of turns in secondary winding
Id=(N_prim/N_sec)*Ic_max; // calculation of peak diode current
PIV=V1+(Edc_max/(N_prim/N_sec)); // calculation of peak inverse voltage
printf("\nThe average input power is \t Pi=%.f W",Pi);
printf("\nThe maximum average input current is \t I_avg_max=%.3f A",I_avg_max);
printf("\nThe minimum average input current is \t I_avg_min=%.3f A",I_avg_min);
printf("\n\nThe ratings of the transistor are \t Ic_max=%.2f A \t V_CE_max=%.f V \t Pd_max=%.f W",Ic_max,V_CE_max,Pd_max);
printf("\n\nThe number of turns in primary winding is \t N_prim=%.f",N_prim);
printf("\n\nThe number of turns in secondary winding is \t N_sec=%.f",N_sec);
printf("\n\nThe ratings of the diode are \t Id>=%.1f A \t PIV>= %.2f V",Id,PIV);
// Note : 1.There is calculation mistake while calculating Id. Thats why answer in the book is wrong.
//        2. The answers vary slightly due to precise calculations