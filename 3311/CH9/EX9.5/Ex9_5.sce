// chapter 9
// example 9.5
// Determine transistor ratings, THD, DF and HF and DF of the lowest order harmonic
// page-554
clear;
clc;
// given
Edc=48; // in V (dc source)
R=3; // in ohm
// calculate
Ip=Edc/R; // calculation of transistor peak current
I_avg=Ip/2; // calculation of transistor average current
V_BR=Edc; // calculation of peak reverse voltage of each IGBT
printf("\nThe transistor ratings are \t Ip=%.f A \t I_avg=%.f A \t V_BR=%.f V",Ip,I_avg,V_BR);
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
printf("\n\nThe distortion factor is \t\t DF=%.3f   or   \t %.1f percent",DF,DF*100);
E3_rms=2*Edc/(3*%pi*sqrt(2));
HF3=E3_rms/E1_rms; // calculation of lowest order of harmonic distortion
printf("\n\nThe lowest order harmonic factor is \t HF3=%.3f   or   \t %.2f percent",HF3,HF3*100);
DF3=(E3_rms/3^2)/E1_rms; // calculation of lowest order distortion factor
printf("\n\nThe lowest order distortion factor is \t DF3=%.4f   or   \t %.3f percent",DF3,DF3*100);
// Note: The answer varies slightly due to precise calculation