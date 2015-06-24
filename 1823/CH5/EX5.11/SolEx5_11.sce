//(a) Find the exact change in ICQ. (b) Predict the new value of ICQ using stability-factor analysis.
//Example 5.11 page no 148
clear
clc
Vbb=6
Vbeq1=0.7
Icbo1=0.5
Rb=50
Re=1
B=75//Beta
Icq1=((Vbb-Vbeq1+Icbo1*(0.5*51*10^-3))/((Rb*10^3/B)+Re*10^3))*10^3
printf("\n The value of Icq1=%0.3f mA" ,Icq1)
Icbo2=(Icbo1*10^-6*2^2)*10^6
printf("\n The value of Icbo=%0.3f mA" ,Icbo2)
Vbeq=(-2*10^-3)*20
printf("\n The value of Vbeq=%0.3f V" ,Vbeq)
Vbeq2=Vbeq1+Vbeq
printf("\n The value of Vbeq2=%0.3f V" ,Vbeq2)
Icq2=((Vbb-Vbeq2+Icbo2*(2*51*10^-3))/((Rb*10^3/B)+Re*10^3))*10^3
printf("\n The value of Icq2=%0.3f mA" ,Icq2)
