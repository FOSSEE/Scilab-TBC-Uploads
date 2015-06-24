// chapter 6
// example 6.25
// Determine DPF, DF, HF and PF
// page-361
clear;
clc;
// given
Es=415; // in V (supply voltage)
f=50; // supply frequency
alpha=0:30:180; // in degree
// calculate
// Since Is_n=(2*sqrt(2)*Idc/%pi)*(cosd(30*n)/n)=0.9*Idc*(cosd(30*n)/n)
// and Is_fund=0.9*Idc*cosd(30)=0.78*Idc and Is_rms=sqrt(2/3)*Idc,
// Since DF=Is_fund/Is_rms therefore we get
DF=(0.78/sqrt(2/3)); // calclation of distortion factor
HF=sqrt((1/DF)^2-1); // calclation of harmonic factor
printf("\nangle\t\tDPF\t\tDF\t\tHF\t\tPF");
for alpha=0:30:180
    DPF=cosd(alpha); // calclation of displacement power factor
    SPF=(3/%pi)*cosd(alpha); // calclation of supply power factor
    printf("\n%.f\t\t%.3f\t\t%.1f %%\t\t%.1f %%\t\t%.3f",alpha,DPF,DF*100,HF*100,SPF);
end