//chapter 21
//example 21.3
//page 951
printf("\n")
printf("given")
Vcc=9;Vf=1.6;Vb=7;hFE=100;Vce=.2;Ic=10*10^-3;Vbe=.7;
R2=(Vcc-Vf-Vce)/Ic
R2=680;//use standard value
Ic=(Vcc-Vf-Vce)/R2
Ib=Ic/hFE
Rb=(Vb-Vbe)/Ib