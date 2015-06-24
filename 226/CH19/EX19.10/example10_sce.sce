//chapter 19
//example 19.10
//page 838
printf("\n")
printf("given")
Vb=3.2;Ic1=5*10^-3;Vce=3.2;Vbe=.7;
Vbmin=Vb-.5
Vbmax=Vb+.5
I10=.1*Ic1
R10=(Vce-Vbe)/I10
R10=4.7*10^3;//use standard value
disp(" for Vce=3.7")
Vce=3.7;
I10max=(Vce-Vbe)/R10
disp("Vce=2.7V")
Vce=2.7;
I10min=(Vce-Vbe)/R10
R=Vbe/I10min
R11=Vbe/I10max
R12=R-R11
