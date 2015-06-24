// chapter 8
// example 8.22
// Design the jones chopper
// page-500-501
clear;
clc;
// given
Edc=200; // in V (source voltage)
I0=50; // in A (load current)
t_q=200; // in us
safety_factor=1.5;
// calculate
t_q=t_q*1E-6;  // changing unit from us to s
C=(%pi/2)*(t_q/Edc)*I0; // calculation of commutating capacitance
V_C=safety_factor*Edc; // calculation of capacitor voltage rating
// since t_q=sqrt(L1*C), therefore we get
L1=t_q^2/C; // calculation of commutating inductance L1
L2=L1; // calculation of commutating inductance L2
V_BO=safety_factor*Edc; // for SCR 1
I_T=safety_factor*I0; // for SCR 1
t_q2=(%pi/2)*sqrt(L1*C); // for SCR 1
PIV=V_BO; // calculation of Peak inverse voltage for diode D1
I_D=I_T; // calculation of diode current for diode D1
dV_dt_1=I0/C; // dynamic characteristics for SCR 1
di_dt_1=safety_factor*Edc/L1; // dynamic characteristics for SCR 1
E_peak=safety_factor*Edc;
dV_dt_2=E_peak/sqrt(L1*C); // dynamic characteristics for SCR 2
L=2; // in uH (assumption as done in the book)
di_dt_2=E_peak/L; // dynamic characteristics for SCR 2
printf("\nThe commutating capacitance is \t\t C=%.2f uF",C*1E6);
printf("\n\nThe capacitor voltage rating is \t V_C=%.f V",V_C);
printf("\n\nThe commutating inductances are \t L1=%.2f mH \t or L2=%.2f mH",L1*1E3,L2*1E3);
printf("\n\nThe characteristics of SCR1 are \t V_BO=%.f V \t I_T=%.f A",V_BO,I_T);
printf("\n\nThe characteristics of SCR2 are \t t_q<=%.f us or t_q=250 us \t V_BO=%.f V \t I_T=%.f A",t_q2*1E6,V_BO,I_T);
printf("\n\nThe characteistics of diode D1 are \t PIV=%.f V \t I_D=%.f A",V_BO,I_D);
printf("\n\nThe dynamic characteistics of SCR1 are \t dV/dt=%.2f V/us \t di/dt=%.2f A/us",dV_dt_1*1E-6,di_dt_1*1E-6);
printf("\n\nThe dynamic characteistics of SCR2 are \t dV/dt=%.2f V/us \t di/dt=%.f A/us",dV_dt_2*1E-6,di_dt_2*1E-6);
// Note: the answers vary slightly due to precise calculation