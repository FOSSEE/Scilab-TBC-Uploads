// chapter 6
// example 6.36
// Calculate various parameters
// page-393-395
clear;
clc;
// given
E=230; // in V (supply voltage)
f=50; // in Hz (supply frequency)
Ia=10; // in A
Edc=175; // in V (average output voltage)
alpha1=33, alpha2=78; // in degree
Beta1=62; // in degree
// calculate
Em=sqrt(2)*E;// calculation of peak voltage
// EAC control 
// Since Edc=(Em/%pi)*(1-cosd(Beta)), therefore we get
Beta=acosd(1-(%pi/Em)*Edc);// calculation of extinction angle
Is_rms=Ia*sqrt(Beta/180);// calculation of rms supply current
Is_fund=(2*sqrt(2)*Ia/%pi)*sind(Beta/2);// calculation of rms fundamental current
DPF=sind(Beta/2);// calculation of displacement factor
DF=Is_fund/Is_rms;// calculation of distortion factor
HF=sqrt(1/DF^2-1);// calculation of harmonic factor
PF=DF*DPF;// calculation of power factor
printf("\nEAC Control");
printf("\n\t\tThe extinction angle is \t Beta=%.2f degree",Beta);
printf("\n\t\tThe rms supply current is \t Is_rms=%.2f A",Is_rms);
printf("\n\t\tThe rms fundamental current is \t Is_fund=%.2f A",Is_fund);
printf("\n\t\tThe displacement factor is \t DPF=%.2f",DPF);
if DPF>=0 then
    printf(" (lagging)");
else
    printf(" (leading)");
end
printf("\n\t\tThe distortion factor is \t DF=%.2f percent",DF*100);
printf("\n\t\tThe harmonic factor is \t\t HF=%.2f percent",HF*100);
printf("\n\t\tThe power factor is \t\t PF=%.4f",PF);
if PF>=0 then
    printf(" (lagging)");
else
    printf(" (leading)");
end
// SAC control
// Since Edc=(2*Em/%pi)*cosd(alpha), therefore we get
alpha=acosd(%pi/(2*Em)*Edc);// calculation of trigger angle
Is_rms=Ia*sqrt(1-(2*alpha/180));// calculation of rms supply current
Is_fund=(2*sqrt(2)*Ia/%pi)*cosd(alpha);// calculation of rms fundamental current
DPF=1;// calculation of displacement factor
DF=Is_fund/Is_rms;// calculation of distortion factor
HF=sqrt(1/DF^2-1);// calculation of harmonic factor
PF=DF*DPF;// calculation of power factor
printf("\n\nSAC Control");
printf("\n\t\tThe trigger angle is \t\t alpha=%.2f degree",alpha);
printf("\n\t\tThe rms supply current is \t Is_rms=%.f A",Is_rms);
printf("\n\t\tThe rms fundamental current is \t Is_fund=%.1f A",Is_fund);
printf("\n\t\tThe displacement factor is \t DPF=%.f",DPF);
printf("\n\t\tThe distortion factor is \t DF=%.f percent",DF*100);
printf("\n\t\tThe harmonic factor is \t\t HF=%.1f percent",HF*100);
printf("\n\t\tThe power factor is \t\t PF=%.2f",PF);
// PWM control
Beta3=180-alpha1;
Beta2=180-alpha2;
alpha3=180-Beta1;
Edc=(Em/%pi)*(cosd(alpha1)-cosd(Beta1)+cosd(alpha2)-cosd(Beta2)+cosd(alpha3)-cosd(Beta3));// calculation of average output voltage
Is_rms=(Ia/sqrt(180))*sqrt(Beta1-alpha1+Beta2-alpha2+Beta3-alpha3);// calculation of rms supply current
Is_fund=(sqrt(2)*Ia/%pi)*(cosd(alpha1)-cosd(Beta1)+cosd(alpha2)-cosd(Beta2)+cosd(alpha3)-cosd(Beta3));// calculation of rms fundamental current
DPF=1;// calculation of displacement factor
DF=Is_fund/Is_rms;// calculation of distortion factor
HF=sqrt(1/DF^2-1);// calculation of harmonic factor
PF=DF*DPF;// calculation of power factor
printf("\n\nPWM Control");
printf("\n\t\tThe average output voltage is \t Edc=%.2f V",Edc);
printf("\n\t\tThe rms supply current is \t Is_rms=%.2f A",Is_rms);
printf("\n\t\tThe rms fundamental current is \t Is_fund=%.1f A",Is_fund);
printf("\n\t\tThe displacement factor is \t DPF=%.f",DPF);
printf("\n\t\tThe distortion factor is \t DF=%.f percent",DF*100);
printf("\n\t\tThe harmonic factor is \t\t HF=%.2f percent",HF*100);
printf("\n\t\tThe power factor is \t\t PF=%.2f",PF);
// Note: The answers vary slightly due to precise calculation upto 6 decimal digits.In the book, the calculation is done upto 2 decimal digit