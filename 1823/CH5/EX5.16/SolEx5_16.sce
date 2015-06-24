//Find an expression for ICQ at any temperature.
//Example 5.16 page no 150
clear
clc
B=50//beta
Vee=5
Vbeq1=0.7
T2=125
Re=3*10^3
Icbo1=0.5//*10^-6
Icq2=(((B+1)/B)*((Vee-Vbeq1+0.002*(T2-25))/Re)+(2^((T2-25)/10))*Icbo1*10^-6)*10^3
printf("\n The value of Icq2=%0.3f mA" ,Icq2)
