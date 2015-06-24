// chapter 5
// example 5.1
// Fig. 5.15
// What will be the maximum and minimum firing angle 
// page-155
clear;
clc;
// given
Vc=40; // in V (breakdown voltage)
R1_min=1; R1_max=25; // in k-ohm
C=470; // in nF
Erms=240; // in V 
f=50; // in Hz (AC supply frequency)
// calculate
C=C*1E-9; // changing unit from nF to F
R1_min=R1_min*1E3; // changing unit from k-ohm to ohm
R1_max=R1_max*1E3; // changing unit from k-ohm to ohm
Zc=1/(2*%pi*f*C); // impedence of capacitor
phi_min=90-atand(1/(2*%pi*f*R1_min*C));  // calculation of minimum phase angle
phi_max=90-atand(1/(2*%pi*f*R1_max*C)); // calculation of minimum phase angle
Zd_min=sqrt(R1_min^2+Zc^2); // calculation of minimum impedence
Zd_max=sqrt(R1_max^2+Zc^2); // calculation of maximum impedence
Em=Erms*sqrt(2); // calculation of maximum value of voltage
Id_min=Em/Zd_max; // 
Id_max=Em/Zd_min; // calculation of maximum impedence
Vc_min_peak=Id_min*Zc;
Vc_max_peak=Id_max*Zc;
// Now Vc=Vc_max_peak*sin(wt_min+phi_min) and Vc=Vc_min_peak*sin(wt_max+phi_max)

// evaluating both these, we get  wt_min=asind(Vc/Vc_max_peak)+phi_min and wt_max=asind(Vc/Vc_min_peak)+phi_max

wt_min=asind(Vc/Vc_max_peak)+phi_min;
wt_max=asind(Vc/Vc_min_peak)+phi_max;
printf("\nThe value of impedence of capacitor is \t\t Zc=%.f ohm",Zc);
printf("\n\nThe value of minimum phase difference is \t %.1f degree",phi_min);
printf("\nThe value of maximum phase difference is \t %.2f degree",phi_max);
printf("\n\nThe value of minimum total impedence is \t Zd_min=%.f ohm",Zd_min);
printf("\nThe value of maximum total impedence is \t Zd_max=%.f ohm",Zd_max);
printf("\n\nThe value of minimum peak current is \t\t Id_min=%.3f A",Id_min);
printf("\nThe value of maximum peak current is \t\t Id_max=%.3f A",Id_max);
printf("\n\nThe value of minimum peak total voltage is \t Vc_min_peak=%.2f V",Vc_min_peak);
printf("\nThe value of maximum peak total voltage is \t Vc_max_peak=%.1f V",Vc_max_peak);
printf("\n\nThe value of minimum delay is \t\t\t =%.2f degree",wt_min);
printf("\nThe value of maximum delay is \t\t\t =%.1f degree",wt_max);
