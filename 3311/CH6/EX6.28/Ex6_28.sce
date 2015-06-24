// chapter 6
// example 6.28
// Compute source inductance, load resistance and overlap angle
// page-371-372
clear;
clc;
// given
E=400; // in V (supply voltage)
f=50; // in Hz (supply frequency)
alpha=%pi/4; // in radian (firing angle)
Id=10; // in A (load current)
Edc=360; // in V (load voltage)
// calculate
alpha=alpha*(180/%pi);
disp(alpha);
Emph=E*sqrt(2/3);// calculation of peak voltage
// Since Edc=(3*sqrt(3)*Emph/%pi)*cosd(alpha)-(3*2*%pi*f*Ls/%pi)*Id, we get
Ls=(%pi/(3*2*%pi*f*Id))*((3*sqrt(3)*Emph/%pi)*cosd(alpha)-Edc);// calculation of source inductance
R=Edc/Id;// calculation of load resistance
// since Edc=(3*sqrt(3)*Emph/%pi)*cosd(alpha+u)-(3*2*%pi*f*Ls/%pi)*Id, we get
u=acosd((%pi/(3*sqrt(3)*Emph))*(Edc-(3*2*%pi*f*Ls/%pi)*Id))-alpha;// calculation of overlap angle
printf("\nThe source inductance is \t Ls=%.1f mH",Ls*1E3);
printf("\nThe load resistance is \t\t R=%.1f ohm",R);
printf("\nThe overlap angle is \t\t u=%.f degree",u);