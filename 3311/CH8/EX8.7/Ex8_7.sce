// chapter 8
// example 8.7
// Compute following quantities
// whether load current is continuous, Average output current, maximum & minimum values of steady-state output current, rms values of 1st, 2nd, 3rd harmonics of load current, Average value of source current, input power, power absorbed by the back emf Eb and power loss in the reistor, RMS value of uotput current
// page-459-460
clear;
clc;
// given
Edc=220; // in V (dc source)
f=500; // in Hz (chopping frequency)
alpha=0.3; // duty cycle
R=1; // in ohm
L=3; // in mH
Eb=23; // in V (back emf)
// calculate
L=L*1E-3; // changing unit from mH to H
tou=L/R;
T=1/f;
g=Eb/Edc;
w=2*%pi*f;
alpha_1=(tou/T)*log(1+g*(exp(T/tou)-1));
if alpha>alpha_1 then
    printf("\nThe load current is continuous.");
else
    printf("\nThe load current is discontinuous.");
end
I0_avg=(alpha*Edc-Eb)/R;
printf("\n\nThe average output current is \t\t\t\t I0_avg=%.f A",I0_avg);
// Since alpha=Ton/T, therefore we get
Ton=alpha*T;
I0_max=(Edc/R)*((1-exp(-Ton/tou))/(1-exp(-T/tou)))-Eb/R;
printf("\n\nThe maximum steady-state output current is \t\t I0_max=%.2f A",I0_max);
I0_min=(Edc/R)*((exp(Ton/tou)-1)/(exp(T/tou)-1))-Eb/R;
printf("\n\nThe minimum steady-state output current is \t\t I0_min=%.2f A",I0_min);
Value=0; // a temporary variable to calculate few variables
for n=1:3
    Z=sqrt(R^2+(w*n*L)^2);
    I=(2*Edc*sin(n*%pi*alpha))/(n*sqrt(2)*%pi)/Z;
    printf("\n\nThe %.fth harmonic of steady-state output current is \t I_%.f=%.3f A",n,n,I);
    Value=Value+I^2;
end
I_TAV=(Edc-Eb)*alpha/R-(L/(R*T))*(I0_max-I0_min);
printf("\n\nThe average value of source current is \t\t\t I_TAV=%.f3 A",I_TAV);
Pin=Edc*I_TAV;
P_absorbed=Eb*I0_avg;
P_loss=Pin-P_absorbed;
printf("\n\nThe input power is \t\t\t\t\t Pin=%.1f W",Pin);
printf("\n\nThe power absorbed by load emf is \t\t\t P_absorbed=%.f W",P_absorbed);
printf("\n\nThe power loss in the resistor is \t\t\t P_loss=%.1f W",P_loss);
Irms_2_3=sqrt(I0_avg^2+Value);
printf("\n\nThe rms current using the result of (ii) and (iii) is \t Irms=%.2f A",Irms_2_3);
Irms_4=sqrt(P_loss/R);
printf("\n\nThe rms current using the result of (iv) is \t\t Irms=%.2f A",Irms_4);
// Note: the answer varies slightly due to precise calculation