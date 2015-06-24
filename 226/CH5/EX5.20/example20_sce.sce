//chapter 5
//example 5.20
//page 2
printf("\n")
printf("given")
Vcc=10;Rc=1*10^3;Rb=6.8*10^3;Vs=5;
disp(" hFE calculation")
Ic=Vcc/Rc
Ib=(Vs-Vbe)/Rb
hFE=Ic/Ib
disp("when hFE=10")
hFE=10
Ic=hFE*Ib
Vce=Vcc-(Ic*Rc)