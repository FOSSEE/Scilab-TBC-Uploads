// chapter 9
// example 9.4
// fig. 9.5
// Determine IGBT ratings, THD, DF and HF and DF of the lowest order harmonic
// page-552-554
clear;
clc;
// given
Edc=24; // in V (dc source)
R=3; // in ohm
// calculate
I_peak=(Edc/2)/R; // calculation of IGBT peak current
V_BR=2*(Edc/2); // calculation of peak reverse voltage of each IGBT
printf("\nThe IGBT ratings are \t I_peak=%.f A \t V_BR=%.f V",I_peak,V_BR);
E1_rms=2*Edc/(sqrt(2)*%pi);
E0_rms=(Edc/2);
THD=sqrt(E0_rms^2-E1_rms^2)/E1_rms; // calculation of total harmonic distortion
printf("\nThe total harmonic distortion is \t THD=%.3f or \t %.1f percent",THD,THD*100);
K=0;
for n=3:2:13
    En_rms=2*Edc/(n*%pi*sqrt(2));
    En_rms_n2=(En_rms/n^2)^2;
    K=K+En_rms_n2;
end
K=sqrt(K);
DF=K/E1_rms; // calculation of distortion factor
printf("\nThe distortion factor is \t\t DF=%.3f or \t %.1f percent",DF,DF*100);
E3_rms=2*Edc/(3*%pi*sqrt(2));
HF3=E3_rms/E1_rms; // calculation of lowest order of harmonic distortion
printf("\nThe lowest order harmonic factor is \t HF3=%.3f or \t %.2f percent",HF3,HF3*100);
DF3=(E3_rms/3^2)/E1_rms; // calculation of lowest order distortion factor
printf("\nThe lowest order distortion factor is \t DF3=%.3f or \t %.2f percent",DF3,DF3*100);
// Note: The answer varies slightly due to precise calculation