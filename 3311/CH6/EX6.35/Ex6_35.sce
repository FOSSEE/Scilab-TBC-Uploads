// chapter 6
// exapmle 6.35
// Calculate reducation in dc output voltage and overlap angle
// page-378
clear;
clc;
// given
E_line=400; // in V (line to line supply voltage)
alpha=30; // in degree (control angle)
r=15; // in degree (overlap angle)
alpha_inv_mode=120; // in degree (control angle in inverting mode)
P=6; // number of pulses
// calculate
Emax=sqrt(2/3)*E_line;// calculation of peak voltage
Edc_with_ovelap=(P/(2*%pi))*Emax*sin(%pi/P)*(cosd(alpha)+cosd(alpha+r));// calculation of average output voltage with overlap
Edc_without_overlap=(P/%pi)*Emax*(%pi/P)*cosd(alpha);// calculation of average output voltage without overlap
Edc_drop=Edc_without_overlap-Edc_with_ovelap;// calculation of reducation in dc output voltage
Beta=180-alpha_inv_mode;// calculation of beta
r=Beta-acosd((25/(Emax*sin(%pi/P)))-cosd(Beta));// calculation of overlpa angle
printf("\nThe reducation in dc output voltage due to overlap is \t %.2f V",Edc_drop);
printf("\nThe overlap angle in the inverting mode is \t\t r= %.f degree",r);
// Note: The answers vary slightly due to precise calculation upto 6 decimal digits.In the book, the calculation is done upto 2 decimal digit