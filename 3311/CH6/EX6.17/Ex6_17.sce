// chapter 6
// example 6.17
// Calculate firing angle and supply power factor
// page-341-342
clear;
clc;
// given
Vs=230; // in V (voltage supply)
f=50; // supply frequency
E_batt=200; // in V (battery emf)
r=0.5; // in ohm (internal resistance of battery)
Id=20; // in A (load current)
// calculate
Edc=E_batt+Id*r; // calculation of battery terminal voltage
Em=Vs*sqrt(2/3); // calculation of peak voltage
// Since Edc=(3*sqrt(3)*Em/%pi)*cos(alpha) we get
alpha=acosd(%pi/(3*sqrt(3)*Em)*Edc); // calculation of firing angle
Is=sqrt((1/%pi)*Id^2*(2*%pi/3)); // calculation of supply current over one-half cycle
Idc_rms=Id; // calculation of rms value of output current
Pd=Edc*Id+Idc_rms^2*r; // calculation of power delivere to the load
// Since Pd=sqrt(3)*Vs*Is*cos1(alpha1) where cos(alpha1) is supply power factor therefore we get
pf=Pd/(sqrt(3)*Vs*Is); // calculation of supply power factor
Edc_batt=E_batt-Id*r; // calculation of dc voltage when battery is delivering power
// since (-)Edc_batt=(3*sqrt(3)/%pi*Emph*cosd(alpha)) therefore we get
alpha2=acosd((%pi/(3*sqrt(3)))*(-Edc_batt)/Em); // calculation of firing angle
printf("\nThe firing angle is \t\t %.2f degree",alpha);
printf("\nThe supply power factor is \t %.2f",pf);
if pf>0 then
    printf(" (lagging)");
else 
    printf(" (leading)");
end
printf("\n\nWhen battery is delivering the power, the firing angle is \t%.3f degree",alpha2);
// Note:  The answers for all required values varies slightly due to precise calculation upto 6 digit