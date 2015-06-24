clc
//Initialization of variables
rv=8
k=1.4
Qa=1280
pa=14.7 //psia
R=10.73/29
Ta=540 //R
J=778
cv=0.17 //Btu/lbm R
//calculations
etat=1-1/rv^(k-1)
W=etat*Qa
va=R*Ta/pa
vb=va/rv
Tb=Ta*rv^(k-1)
dt=Qa/cv
Tc=Tb+dt
pb=pa*(rv)^(k-1)
pc= Tc*pb/Tb
Td=Tc*(1/rv)^(k-1)
pd=pa*Td/Ta
imep = W*J/144/(va-vb)
//results
printf("Thermal efficiency = %.1f percent",etat*100)
printf("\n Work done = %d btu/lbm air",W)
printf("\n Imep = %d lbf/in^2",imep)
printf("\n Pressure and temperature at A = %.1f psia and %d R",pa,Ta)
printf("\n Pressure and temperature at B = %d psia and %d R",pb,Tb)
printf("\n Pressure and temperature at C = %d psia and %d R",pc,Tc)
printf("\n Pressure and temperature at D = %d psia and %d R",pd,Td)
printf("\n The pressures given in textbook are wrong. Please check using a calculator")
