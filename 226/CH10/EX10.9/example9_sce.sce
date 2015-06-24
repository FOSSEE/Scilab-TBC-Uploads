//chapter 10
//example 10.9
//page 405
printf("\n")
printf("given")
Id=3*10^-3;Vds=10;Vdd=25;Vg=5.2;Vgsoff=-6;Idss=8*10^-3;R2=1*10^6;
R=(Vdd-Vds)/Id//R=(Rs+Rd)/2
Rd=R/2
Rs=Rd
Vgs=Id*Rs
Vgs=Vgsoff*(1-sqrt(Id/Idss))
Vs=Id*Rs
Vg=Vs-(-Vgs)
R1=((Vdd-Vg)*R2)/Vg