clear all; clc;

disp("The gas density at the inlet can be calculated as rho1=p1/(R*T1)")
p1=14.7
R=35.11
T1=30+460
rho_1=p1*144/(R*T1)
printf(" rho1= %0.3f lbm/ft^3",rho_1)

m=0.123*150/60
printf("\n Hence we have mass flow rate m= %0.3f lbm/s",m)
disp("Neglecting the mechanical and leakage  and assuming ideal gas with constant Cp,we cam obtain T2")

T1=490
p2=40
p1=14.7
k=1.29
Eta_c=0.87
T2=T1*(1+[(p2/p1)^((k-1)/k)-1]/[Eta_c])
printf(" T2=%0.0fR",T2)

//let -w_c/m=x
Cp=0.2007
T2=632
T1=490
x=Cp*(T2-T1)
printf("\n -w_c/m=%0.1f Btu/lbm",x)

omega_c=0.307*28.5*778/550
printf("\n -omega_c=%0.1f hp",omega_c)

disp("For an isothermal process, we have -wc/m=p1*v1*ln(p2/p1)")
p1=14.7
v1=144/0.123
p2=40
x=p1*v1*log(p2/p1)
printf(" Thus -wc/m= %0.2f lbf-ft/lbm",x)

wc=0.307*17227/550
printf("\n Hence -wc= %0.1f hp",wc)































