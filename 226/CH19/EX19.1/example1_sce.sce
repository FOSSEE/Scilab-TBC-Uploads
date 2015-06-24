//chapter 19
//example 19.1
//page 810
printf("\n")
printf("given")
Rpy=40;N1=74;N2=14;R2=3.7*10^3;R1=4.7*10^3;Vbe=.7;Re=1*10^3;Vcc=13;Rl=56;
disp("Q-point")
Vb=Vcc*(R2/(R1+R2))
Ic=(Vb-Vbe)/Re
Ie=Ic;
Vce=Vcc-Ic*(Rpy+Re)
rl=(N1/N2)^2 *Rl
rl=rl+Rpy
Ic=5*10^-3;
Vce=Ic*rl