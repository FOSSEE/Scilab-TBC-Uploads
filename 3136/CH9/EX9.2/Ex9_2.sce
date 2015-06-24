clear all; clc;

disp("To use Figure 9.8,with Qf=ΣU^2/delta_Hs=2*g_c*lambda^2*R_H")
disp("The value of R_H can be estimated with equation 8.4.")
disp("Using k=1.3 for steam and suusming ETA_p=0.90 we have ETAad=[1-(p_e/p_i)^(ETAp*(k-1)/k)]/[1-(p_e/p_i)^(k-1)/k]=0.931")

ETA_ad=0.931
ETA_p=0.90
R_H=ETA_ad/ETA_p
printf(" R_H=ETA_ad/ETA_p= %0.3f",R_H)

disp("For impulse stages,the optimal efficiencies occur at lambda=U/V2=sinα2/2=0.47 with alpha2=70 degrees")
QF=2*25052*(0.47^2)*1.035
printf(" So Qf can be calculated as %0.0f",QF)

disp("From figure 9.8, the efficiency can be estimated as ETA=83%")

disp("From the Mollier diagram in figure A1 we have hi=1525 Btu/lbm,hse=1150 Btu/lbm,with s_i=s_es=1.8Btu/lb-R")
delta_Hs=1525-1150
printf(" Hence delta_Hs=%0.0f Btu/lbm",delta_Hs)

summation_sqr(U)=11455*375
printf("\n So we have ΣU^2=%0.0f ((ft/s)^2)",summation_sqr(U))

disp("With 10 identical stages,we have U^2=429562")
sqr(U)=429562
U=sqrt(sqr(U))
printf(" Thus U= %0.0f ft/s",U)

omega=3600*%pi/30
D=2*U/omega
printf("\n The turbine diameter D= %0.3f ft",D)//The answer has been incorrectly rounded off to 3.47 in the book. A more accurate answer is provided here.
























