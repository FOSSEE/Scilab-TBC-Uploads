clc
clear
//Initialization of variables
area1=2.7
len=3.4
scale=60
area2=2.75
dia=12 //ft
d2=2.5 //ft
L=15/12 //ft
n=250 //rpm
F=600 //lb
r=3 //ft
//calculations
Ah=dia^2 *%pi/4
Ac=(dia^2 -d2^2)*%pi/4
Pih=area1/len *scale
Pic=area2/len *scale
Hihp=Pih*L*Ah*n/33000
Cihp=Pic*L*Ac*n/33000
Tihp=Hihp+Cihp
Bhp=2*%pi*r*F*n/33000
Fhp=Tihp-Bhp
eff=Bhp/Tihp *100
//results
printf("Ihp = %.1f ihp",Tihp)
printf("\n Bhp = %.1f bhp",Bhp)
printf("\n Fhp = %.1f fhp",Fhp)
printf("\n Efficiency = %.1f percent",eff)
disp("The answer is a bit different due to rounding off error in the textbook.")
