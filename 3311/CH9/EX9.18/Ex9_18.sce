// chapter 9
// example 9.18
// Desig a series invertor circuit
// page-606
clear;
clc;
// given
f0=1, fr=5; // in KHz (range of frequency of operation)
Rmin=25, Rmax=100; // in ohm (range of load resistance)
Ip=3;  // in A
Edc=100; // in V (dc source)
AF=0.5; // attenuation factor (assumption as done in the book)
// calculate
f0=f0*1E3; // changing unit from KHz to Hz
fr=fr*1E3; // changing unit from KHz to Hz
wr=2*%pi*fr; // calculation of upper limit of angular velocity 
w0=2*%pi*f0; // calculation of lower limit of angular velocity
L=-Rmax/(8*fr*log(AF)); // calculation of inductance
C=(1/L)*(1/(wr^2+(Rmax/(2*L))^2)); // calculation of capacitance
Ec=Edc*(exp(-Rmin*%pi/(2*wr*L))/(1-exp(-Rmin*%pi/(2*wr*L)))); // calculation of capacitor voltage
I_peak=(Ec+Edc)/(wr*L)*exp(-Rmin*%pi/(4*wr*L)); // calculation of peak current
// since V_BO>=Ec+Edc, therefore 
V_BO=Ec+Edc; // calculation of forward blocking voltage rating
// since I_T>=I-peak, therefore 
I_T=(I_peak+1); // calculation of Thyristor current
Toff=%pi*((1/w0)-(1/wr)); // calculation of Thyristor off-time
// since I_T>=I-peak, therefore 
tq=Toff*1E3-0.1; // calculation of invertor trun off-time
printf("\nThe inductance \t\t\t L=%.1f mH",L*1E3);
printf("\nThe capacitance \t\t C=%.2f uF",C*1E6);
printf("\nThe capacitor voltage \t\t Ec=%.2f V",Ec);
printf("\nThe peak current \t\t I_peak=%.2f A",I_peak);
printf("\nThe forward blocking voltage \t V_BO>=%.f V",V_BO);
printf("\nThe Thyristor current \t\t I_T=%.f A",I_T);
printf("\nThe Thyristor turn-off time \t Toff=%.1f ms",Toff*1E3);
printf("\nThe invertor turn-off time \t tq=%.1f ms",tq);
// Note: The answer varies slightly due to precise calculations and round off as done in the book