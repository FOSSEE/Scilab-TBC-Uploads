// chapter 6
// example 6.32
// Compute the firing angle and overlap angle
// page-373-375
clear;
clc;
// given
Eph=230; // in V (supply voltage per phase)
f=50; // in Hz (supply frequency)
Ls=0.3; // in mH (source inductance)
Id=15; // in A (load current)
R=1; // onm (internal resistance)
E_loadsource=400; // in V (dc source voltage)
// calculate
Ls=Ls*1E-3; // changing unit from mH to H
Edc=E_loadsource+Id*R;// calculation of average voltage
Emph=Eph*sqrt(2);// calculation of peak voltage
// Since Edc=(3*sqrt(3)/%pi)*Emph*cosd(alpha)-(3*2*%pi*f*Ls/%pi)*Id, therefore we get
alpha=acosd((%pi/(3*sqrt(3)*Emph))*(Edc+(3*2*%pi*f*Ls/%pi)*Id));// calculation of firing angle
// Since Edc=(3*sqrt(3)/%pi)*Emph*cosd(alpha+u)+(3*2*%pi*f*Ls/%pi)*Id, therefore we get
u=acosd(%pi/(3*sqrt(3)*Emph)*(Edc-(3*2*%pi*f*Ls/%pi)*Id))-alpha;// calculation of overlap angle
printf("\nThe firing angle is \t%.2f degree",alpha);
printf("\nThe overlap angle is \t%.3f degree",u);
// Note: The answers vary slightly due to precise calculation upto 6 decimal digits.In the book, the calculation is done upto 2 decimal digit